package com.example.demo.controllers.impl;

import lombok.AllArgsConstructor;
import org.springframework.context.ApplicationContext;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

@RestController
@RequestMapping("/monitoring")
@AllArgsConstructor
public class BeansController {
    /**
     * The ApplicationContext used to access the beans in the Spring application context.
     */
    private final ApplicationContext context;

    /**
     * Handles GET requests to retrieve the names of all beans in the application context.
     *
     * @return A list of bean names.
     */
    @GetMapping("/beans")
    public List<String> beans() {
        return Arrays.asList(context.getBeanDefinitionNames());
    }
}
