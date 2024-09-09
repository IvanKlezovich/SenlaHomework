package com.example.demo.repositories;

/**
 * Base repository interface providing common SQL query templates.
 * These templates can be used by concrete repository implementations to perform common database operations.
 */
public interface BaseRepository {

    /**
     * SQL query template for selecting all records from a table with pagination.
     * The query is formatted with placeholders for the table name, starting ID, and limit.
     */
    String SELECT_ALL = "select * from %s where id > %d order by id asc limit %d";

    /**
     * SQL query template for selecting a single record from a table based on a specific column value.
     * The query is formatted with placeholders for the table name, column name, and column value.
     */
    String SELECT_LIMIT_1 = "select * from %s where %s = '%s' limit 1";

    /**
     * SQL query template for inserting a new record into a table.
     * The query is formatted with placeholders for the table name, column names, and column values.
     */
    String INSERT = "insert into %s (%s) values(%s)";

    /**
     * SQL query template for deleting a record from a table based on its ID.
     * The query is formatted with placeholders for the table name and record ID.
     */
    String DELETE = "delete from %s where id = %d";
}
