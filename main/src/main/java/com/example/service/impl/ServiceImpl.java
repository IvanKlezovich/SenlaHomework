package com.example.service.impl;

import com.example.annotations.Autowired;
import com.example.annotations.Component;
import com.example.repositories.Database;
import com.example.repositories.impl.DatabaseImpl;
import com.example.service.Service;

@Component
public class ServiceImpl implements Service {

    private Database database;

    @Autowired
    public void setDatabase(DatabaseImpl database){
        this.database = database;
    }

    public String execute() {
        return database.execute();
    }
}
