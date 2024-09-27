package com.example.demo;

import com.example.demo.configs.SpringConfiguration;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;


public class DemoApplication {

    public static void main(String[] args) {
        AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(SpringConfiguration.class);
    }
}
