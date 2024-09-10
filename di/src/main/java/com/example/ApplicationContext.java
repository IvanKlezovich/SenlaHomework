package com.example;

import com.example.annotations.Component;
import com.example.annotations.Value;
import com.example.annotations.Autowired;
import org.reflections.Reflections;

import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

public class ApplicationContext {

    private static final Map<Class<?>, Object> container = new HashMap<>();
    private static final Properties properties = new Properties();

    static {
        try (InputStream input = ApplicationContext.class.getClassLoader().getResourceAsStream("application.yaml")) {
            properties.load(input);
        } catch (Exception e) {
            e.printStackTrace();
        }

        scanAndRegisterComponents();
        injectDependencies();
    }

    public static void init() {
    }

    private static void scanAndRegisterComponents() {
        Reflections reflections = new Reflections("com.example");
        Set<Class<?>> componentClasses = reflections.getTypesAnnotatedWith(Component.class);

        for (Class<?> clazz : componentClasses) {
            try {
                Object instance = createInstance(clazz);
                container.put(clazz, instance);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private static Object createInstance(Class<?> clazz) throws Exception {
        Constructor<?> constructor = getConstructorWithAutowiredAnnotation(clazz);
        if (constructor != null) {
            constructor.setAccessible(true);
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            Object[] parameters = new Object[parameterTypes.length];
            for (int i = 0; i < parameterTypes.length; i++) {
                parameters[i] = container.get(parameterTypes[i]);
            }
            return constructor.newInstance(parameters);
        } else {
            return clazz.getDeclaredConstructor().newInstance();
        }
    }

    private static Constructor<?> getConstructorWithAutowiredAnnotation(Class<?> clazz) {
        for (Constructor<?> constructor : clazz.getDeclaredConstructors()) {
            if (constructor.isAnnotationPresent(Autowired.class)) {
                return constructor;
            }
        }
        return null;
    }

    private static void injectDependencies() {
        for (Object instance : container.values()) {
            injectFields(instance);
            injectSetters(instance);
        }
    }

    private static void injectFields(Object instance) {
        for (Field field : instance.getClass().getDeclaredFields()) {
            if (field.isAnnotationPresent(Autowired.class)) {
                field.setAccessible(true);
                try {
                    field.set(instance, container.get(field.getType()));
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                }
            }
            if (field.isAnnotationPresent(Value.class)) {
                field.setAccessible(true);
                Value valueAnnotation = field.getAnnotation(Value.class);
                String propertyValue = properties.getProperty(valueAnnotation.value());
                try {
                    field.set(instance, propertyValue);
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private static void injectSetters(Object instance) {
        for (Method method : instance.getClass().getDeclaredMethods()) {
            if (method.isAnnotationPresent(Autowired.class) && method.getName().startsWith("set")) {
                method.setAccessible(true);
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length == 1) {
                    try {
                        method.invoke(instance, container.get(parameterTypes[0]));
                    } catch (IllegalAccessException | InvocationTargetException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    public static <T> T getBean(Class<T> clazz) {
        return clazz.cast(container.get(clazz));
    }
}