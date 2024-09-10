package com.example.controllers.impl;

import com.example.annotations.Autowired;
import com.example.annotations.Component;
import com.example.controllers.Controller;
import com.example.service.Service;
import com.example.service.impl.ServiceImpl;

@Component
public class ControllerImpl implements Controller {

    private final Service service;

    @Autowired
    public ControllerImpl(Service service){
        this.service = service;
    }

    public String execute(){
        return service.execute();
    }
}
