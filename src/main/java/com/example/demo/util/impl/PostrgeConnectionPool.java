package com.example.demo.util.impl;

import com.example.demo.util.ConnectionPool;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;
import jakarta.annotation.PostConstruct;
import jakarta.annotation.PreDestroy;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Component
@PropertySource("classpath:application.yaml")
public class PostrgeConnectionPool implements ConnectionPool {

    //@Value("${database.url}")
    private String url = "jdbc:postgresql://localhost:5432/books_shops_db";
    //@Value("${database.username}")
    private String username = "postgres";
    //@Value("${database.password}")
    private String password = "postgres";
    //@Value("${database.connection-pool.initial-size}")
    private int initialPoolSize = 10;
    //@Value("${database.max-pool-size}")
    private int maxPoolSize = 30;

    private final List<Connection> pool;

    private final List<Connection> usedConnections = new ArrayList<>();

    public PostrgeConnectionPool() {
        this.pool = new ArrayList<>(initialPoolSize);
    }

    @PostConstruct
    public void create() throws SQLException {
        List<Connection> pool = new ArrayList<>(initialPoolSize);
        for (int i = 0; i < initialPoolSize; i++) {
            pool.add(createConnection());
        }
    }

    public synchronized Connection getConnection() throws SQLException {
        if (pool.isEmpty()) {
            if (usedConnections.size() < maxPoolSize) {
                pool.add(createConnection());
            }else{
                throw new RuntimeException("Maximum pool size reached, no available connections!");
            }
        }

        Connection connection = pool.remove(pool.size() - 1);
        usedConnections.add(connection);
        return connection;
    }

    public synchronized boolean releaseConnection(Connection connection) {
        pool.add(connection);
        return usedConnections.remove(connection);
    }

    @PreDestroy
    public void shutdown() throws SQLException {
        usedConnections.forEach(this::releaseConnection);
        for (Connection c : pool) {
            System.out.println("1");
            c.close();
        }
        pool.clear();
    }

    public int getSize() {
        return pool.size() + usedConnections.size();
    }

    private Connection createConnection() throws SQLException {
        System.out.println("1" + url);
        return DriverManager.getConnection(url, username, password);
    }
}
