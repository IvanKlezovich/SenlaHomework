package com.example.demo.configs;

import liquibase.integration.spring.SpringLiquibase;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.sql.DataSource;
import java.util.Objects;

/**
 * Configuration class for setting up the database connection.
 * This class reads properties from 'database.properties' file and configures a DataSource bean.
 *
 * @author Klezovich Ivan
 * @version 1.0
 */

@Configuration
@EnableTransactionManagement
@RequiredArgsConstructor
@PropertySource("classpath:database.properties")
public class DatabaseConfig {

    /**
     * The Environment object used to access properties.
     */
    private final Environment environment;

    /**
     * Creates and returns a DataSource bean.
     * The DataSource is configured using properties from the 'database.properties' file.
     *
     * @return A DataSource instance, or null if an exception occurs during configuration.
     */
    @Bean
    public DataSource dataSource() {
            DriverManagerDataSource dataSource = new DriverManagerDataSource();

            dataSource.setDriverClassName(Objects.requireNonNull(environment.getProperty("database.driver")));
            dataSource.setUrl(environment.getProperty("database.url"));
            dataSource.setUsername(environment.getProperty("database.username"));
            dataSource.setPassword(environment.getProperty("database.password"));

            return dataSource;
    }

    /**
     * Creates and configures SpringLiquibase for managing database changes.
     * Uses changelog-master.yaml file to define changes.
     *
     * @return the configured SpringLiquibase
     */
    @Bean
    public SpringLiquibase liquibase(){
        SpringLiquibase liquibase = new SpringLiquibase();
        liquibase.setChangeLog("classpath:changelog-master.yaml");
        liquibase.setDataSource(dataSource());
        return liquibase;
    }

//    /**
//     * Creates and configures the PlatformTransactionManager for managing transactions.
//     * Uses DataSourceTransactionManager.
//     *
//     * @param dataSource the DataSource used for managing transactions
//     * @return the configured PlatformTransactionManager
//     */
//    @Bean
//    public PlatformTransactionManager transactionManager(DataSource dataSource) {
//        return new DataSourceTransactionManager(dataSource);
//    }
}
