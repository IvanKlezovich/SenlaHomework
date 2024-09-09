package com.example.demo.util.impl;

import com.example.demo.util.ConnectionPool;
import lombok.Getter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import jakarta.annotation.PostConstruct;
import jakarta.annotation.PreDestroy;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Class implementing a connection pool to the database.
 * Uses settings from the application.properties file for pool configuration.
 */
@Component
public class PostrgeConnectionPool implements ConnectionPool {

    /**
     * URL for connecting to the database.
     */
    @Value("${database.url}")
    private String url;

    /**
     * Username for connecting to the database.
     */
    @Value("${database.username}")
    private String username;

    /**
     * Password for connecting to the database.
     */
    @Value("${database.password}")
    private String password;

    /**
     * Initial size of the connection pool.
     */
    @Value("${database.connection-pool.initial-size}")
    private int initialPoolSize;

    /**
     * Maximum size of the connection pool.
     */
    @Value("${database.connection-pool.max-pool-size}")
    private int maxPoolSize;

    /**
     * List of available connections in the pool.
     */
    private final List<Connection> pool;

    /**
     * List of connections currently in use.
     */
    @Getter
    private final List<Connection> usedConnections = new ArrayList<>();

    /**
     * Constructor for initializing the connection pool.
     */
    public PostrgeConnectionPool() {
        this.pool = new ArrayList<>(initialPoolSize);
    }

    /**
     * Initializes the connection pool by creating initial connections.
     * This method is called after the bean is constructed.
     *
     * @throws SQLException if a database access error occurs
     */
    @PostConstruct
    public void create() throws SQLException {
        List<Connection> pool = new ArrayList<>(initialPoolSize);
        for (int i = 0; i < initialPoolSize; i++) {
            pool.add(createConnection());
        }
    }

    /**
     * Gets a connection from the pool.
     * If the pool is empty and the maximum pool size is not reached, a new connection is created.
     *
     * @return a database connection
     * @throws SQLException if a database access error occurs
     * @throws RuntimeException if the maximum pool size is reached and no connections are available
     */
    public synchronized Connection getConnection() throws SQLException {
        if (pool.isEmpty()) {
            if (pool.size() < maxPoolSize) {
                pool.add(createConnection());
            } else {
                throw new RuntimeException("Maximum pool size reached, no available connections!");
            }
        }

        Connection connection = pool.remove(pool.size() - 1);
        usedConnections.add(connection);
        return connection;
    }

    /**
     * Releases a connection back to the pool.
     *
     * @param connection the connection to release
     * @return true if the connection was successfully released, false otherwise
     */
    public synchronized boolean releaseConnection(Connection connection) {
        pool.add(connection);
        return usedConnections.remove(connection);
    }

    /**
     * Shuts down the connection pool by closing all connections.
     * This method is called before the bean is destroyed.
     *
     * @throws SQLException if a database access error occurs
     */
    @PreDestroy
    public void shutdown() throws SQLException {
        usedConnections.forEach(this::releaseConnection);
        for (Connection c : pool) {
            c.close();
        }
        pool.clear();
    }

    /**
     * Gets the current size of the connection pool.
     *
     * @return the size of the connection pool
     */
    public int getSize() {
        return pool.size();
    }

    /**
     * Creates a new database connection.
     *
     * @return a new database connection
     * @throws SQLException if a database access error occurs
     */
    private Connection createConnection() throws SQLException {
        return DriverManager.getConnection(url, username, password);
    }
}
