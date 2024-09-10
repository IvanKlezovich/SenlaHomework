package com.example.repositories.impl;

import com.example.annotations.Autowired;
import com.example.annotations.Component;
import com.example.repositories.Database;
import com.example.util.ParameterHolder;

@Component
public class DatabaseImpl implements Database {

    @Autowired
    private ParameterHolder parameterHolder;

    public String execute() {
        return parameterHolder.getSomeText();
    }
}
