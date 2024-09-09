package com.example.demo.repositories;

public interface BaseRepository {
    String SELECT_ALL = "select * from %s where id > %d order by id asc limit %d";
    String SELECT_LIMIT_1 = "select * from %s where %s = '%s' limit 1";
    String INSERT = "insert into %s (%s) values(%s)";
    String DELETE = "delete from %s where id = %d";

}
