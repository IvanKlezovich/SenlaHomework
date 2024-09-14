package com.example.controllers.impl;

import com.example.annotations.Autowired;
import com.example.annotations.Component;
import com.example.controllers.Controller;
import com.example.service.impl.ServiceImpl;

@Component
public class ControllerImpl implements Controller {

    private final ServiceImpl service;

    @Autowired
    public ControllerImpl(ServiceImpl service){
        this.service = service;
    }

    public String execute(){
        return service.execute();
    }
}
