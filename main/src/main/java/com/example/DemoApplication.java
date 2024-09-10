package com.example;

import com.example.controllers.impl.ControllerImpl;

public class DemoApplication {

    public static void main(String[] args) {
        ApplicationContext.init();
        ControllerImpl controller = ApplicationContext.getBean(ControllerImpl.class);

        String result = controller.execute();
        System.out.println(result);
    }
}
