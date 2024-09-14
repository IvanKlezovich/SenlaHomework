package com.example;

import com.example.annotations.Autowired;
import com.example.annotations.Component;
import com.example.annotations.Value;
import lombok.SneakyThrows;
import org.reflections.Reflections;
import org.reflections.scanners.Scanners;
import org.reflections.util.ClasspathHelper;
import org.reflections.util.ConfigurationBuilder;
import org.yaml.snakeyaml.Yaml;

import java.io.FileInputStream;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class ApplicationContext {

    static class YamlConfigReader{
        private Map<String, Object> yamlMap;

        @SneakyThrows
        public YamlConfigReader(String filePath){
            Yaml yaml = new Yaml();
            InputStream inputStream = new FileInputStream(filePath);
            yamlMap = yaml.load(inputStream);
        }

        public Object getValue(String key) {
            String[] keys = key.split("\\.");
            Map<String, Object> currentMap = yamlMap;

            for (int i = 0; i < keys.length - 1; i++) {
                currentMap = (Map<String, Object>) currentMap.get(keys[i]);
            }

            return currentMap.get(keys[keys.length - 1]);
        }
    }

    private static YamlConfigReader yamlConfigReader;
    private static final Map<Class<?>, Object> BEANS = new ConcurrentHashMap<>();
    private static final Set<Class<?>> CURRENT_BEANS = new HashSet<>();

    public static void init(String mainPath, String resources){
        yamlConfigReader = new YamlConfigReader(resources);
        initContext(mainPath);
    }

    private static void initContext(String... packageNames){
        var reflections = new Reflections(new ConfigurationBuilder()
                .forPackages(packageNames)
                .setUrls(ClasspathHelper.forJavaClassPath())
                .setScanners(Scanners.TypesAnnotated));
        var components = reflections.getTypesAnnotatedWith(Component.class);
        for (var component : components) {
            if (!BEANS.containsKey(component)) {
                createBean(component);
            }
        }
        for (var bean : BEANS.values()) {
            injectMethods(bean);
            injectionFields(bean);
        }
    }

    @SneakyThrows
    private static void injectMethods(Object bean){
        var methods = bean.getClass().getDeclaredMethods();
        for (var method : methods) {
            if (method.isAnnotationPresent(Autowired.class) && method.getParameterCount() == 1) {
                var dependency = BEANS.get(method.getParameterTypes()[0]);
                if (dependency != null) {
                    method.setAccessible(true);
                    method.invoke(bean, dependency);
                }
            }
        }
    }

    @SneakyThrows
    private static void injectionFields(Object bean){
        var fields = bean.getClass().getDeclaredFields();
        for (var field : fields) {

            if (field.isAnnotationPresent(Autowired.class)) {
                field.setAccessible(true);
                var dependency = BEANS.get(field.getType());
                if (dependency != null) {
                    field.set(bean, dependency);
                }
            }

            if (field.isAnnotationPresent(Value.class)) {
                field.setAccessible(true);
                var value = field.getAnnotation(Value.class).value();
                String propertiesValue = yamlConfigReader.getValue(value).toString();
                field.set(bean, propertiesValue);
            }
        }
    }

    @SneakyThrows
    private static void createBean(Class<?> clazz){
        if (CURRENT_BEANS.contains(clazz))
            throw new IllegalStateException("Circular dependency " + clazz);
        CURRENT_BEANS.add(clazz);
        if (clazz.isInterface()) clazz = findImplementation(clazz);
        if (BEANS.containsKey(clazz)) {
            return;
        }

        var constructor = injectionConstructor(clazz);
        Object bean;
        if (constructor != null) {
            var parameterTypes = constructor.getParameterTypes();
            var dependencies = findDependencies(parameterTypes);
            bean = constructor.newInstance(dependencies);
        }
        else {
            bean = clazz.getDeclaredConstructor().newInstance();
        }
        BEANS.put(clazz, bean);
        for (var iface : clazz.getInterfaces()) {
            BEANS.putIfAbsent(iface, bean);
        }
    }

    private static Class<?> findImplementation(Class<?> iface) {
        return BEANS.keySet().stream()
                .filter(entry -> entry.isAssignableFrom(entry) && !entry.isInterface())
                .findFirst()
                .orElseThrow(() -> new IllegalStateException("No implementation found for interface: "
                + iface.getName()));
    }

    private static Object[] findDependencies(Class<?>[] parameterTypes){
        var dependencies = new Object[parameterTypes.length];
        for (int i = 0; i < parameterTypes.length; i++) {
            createBean(parameterTypes[i]);
            dependencies[i] = getBean(parameterTypes[i]);
            if (dependencies[i] == null)
                throw new IllegalStateException("No bean found for dependency: " + parameterTypes[i].getName());
        }
        return dependencies;
    }

    private static Constructor<?> injectionConstructor(Class<?> clazz) {
        return Arrays.stream(clazz.getDeclaredConstructors())
            .filter(constructor -> constructor.isAnnotationPresent(Autowired.class))
            .findFirst()
            .orElse(null);    }

    public static <T> T getBean(Class<T> clazz) {
        return clazz.cast(BEANS.get(clazz));
    }
}