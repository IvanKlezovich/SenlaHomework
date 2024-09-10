package com.example.util;

import com.example.annotations.Component;
import com.example.annotations.Value;

@Component
public class ParameterHolder {

    @Value("my.param.db")
    private String someText;

    public String getSomeText() {
        return someText;
    }
}
