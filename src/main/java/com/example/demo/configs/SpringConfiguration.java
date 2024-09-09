package com.example.demo.configs;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.context.annotation.*;

import java.util.Random;

/**
 * Main configuration class for the Spring application.
 * This class is responsible for setting up and initializing the beans used in the application.
 *
 * @author Klezovich Ivan
 * @since 2023-10-04
 */
@Configuration
@ComponentScan("com.example.demo")
@EnableAspectJAutoProxy
@Import(DatabaseConfig.class)
public class SpringConfiguration {

    /**
     * Creates and configures an instance of ObjectMapper.
     * ObjectMapper is used for serialization and deserialization of objects to and from JSON.
     *
     * @return configured ObjectMapper instance
     */
    @Bean
    ObjectMapper objectMapper() {
        return new ObjectMapper();
    }

    /**
     * Creates and configures an instance of Random.
     * Random is used for generating random numbers.
     *
     * @return configured Random instance
     */
    @Bean
    Random random() {
        return new Random();
    }
}
