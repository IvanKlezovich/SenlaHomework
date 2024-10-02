package com.example.demo.exeptions;

import java.sql.SQLException;

public class PoolException extends RuntimeException {
    private String message;
    public PoolException() {super(SQLException.class.getName());}
}
