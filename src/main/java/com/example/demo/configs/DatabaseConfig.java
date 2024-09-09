package com.example.demo.configs;

import com.example.demo.util.ConnectionPool;
import com.example.demo.util.impl.PostrgeConnectionPool;
import liquibase.integration.spring.SpringLiquibase;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.sql.DataSource;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Logger;

@Configuration
@EnableTransactionManagement
@RequiredArgsConstructor
@PropertySource("classpath:database.properties")
public class DatabaseConfig {

    /**
     * Creates and returns a DataSource bean.
     * The DataSource is configured using properties from the 'application.yaml' file.
     *
     * @return A DataSource instance, or null if an exception occurs during configuration.
     */
    @Bean
    DataSource dataSource(ConnectionPool connectionPool) {
        return new DataSource() {
            @Override
            public Connection getConnection() throws SQLException {
                return connectionPool.getConnection();
            }

            @Override
            public Connection getConnection(String username, String password) throws SQLException {
                return connectionPool.getConnection();
            }

            @Override
            public PrintWriter getLogWriter() {
                return null;
            }

            @Override
            public void setLogWriter(PrintWriter out) {

            }

            @Override
            public void setLoginTimeout(int seconds) {

            }

            @Override
            public int getLoginTimeout() {
                return 0;
            }

            @Override
            public <T> T unwrap(Class<T> iface) {
                return null;
            }

            @Override
            public boolean isWrapperFor(Class<?> iface) {
                return false;
            }

            @Override
            public Logger getParentLogger() {
                return null;
            }
        };
    }

    @Bean
    public SpringLiquibase liquibase(){
        SpringLiquibase liquibase = new SpringLiquibase();
        liquibase.setChangeLog("classpath:changelog-master.yaml");
        liquibase.setDataSource(dataSource(new PostrgeConnectionPool()));
        return liquibase;
    }

    @Bean
    public PlatformTransactionManager transactionManager(DataSource dataSource) {
        return new DataSourceTransactionManager(dataSource);
    }
}
