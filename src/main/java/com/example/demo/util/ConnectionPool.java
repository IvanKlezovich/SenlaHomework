package com.example.demo.util;

import jakarta.annotation.PostConstruct;
import jakarta.annotation.PreDestroy;

import java.sql.Connection;
import java.sql.SQLException;

public interface ConnectionPool {

    @PostConstruct
    void create() throws SQLException;

    Connection getConnection() throws SQLException;

    boolean releaseConnection(Connection connection);

    @PreDestroy
    void shutdown() throws SQLException;

    int getSize();
}
