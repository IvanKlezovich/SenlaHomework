package com.example;

import com.example.controllers.Controller;
import com.example.controllers.impl.ControllerImpl;

public class DemoApplication {

    public static void main(String[] args) {
        ApplicationContext.init("com.example",
                "/home/ivan/IdeaProjects/SenlaHomework/main/src/main/resources/application.yaml");
        Controller controller = ApplicationContext.getBean(ControllerImpl.class);
        System.out.println(controller.execute());
    }
}
