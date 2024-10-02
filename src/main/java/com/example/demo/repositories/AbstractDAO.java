package com.example.demo.repositories;

import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public abstract class AbstractDAO<T, ID> {

    public abstract void save(T t);

    public abstract void delete(T t);

    public abstract List<T> findAll();

    public abstract Optional<T> findById(ID id);

    public abstract void update(T newT, T oldT);
}
