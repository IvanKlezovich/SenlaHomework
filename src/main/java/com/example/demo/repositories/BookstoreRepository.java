package com.example.demo.repositories;

import com.example.demo.entities.Bookstore;

import java.util.List;
import java.util.Optional;

public interface BookstoreRepository {
    void save(Bookstore books);
    void delete(Bookstore books);
    List<Bookstore> findAll(); // TODO method must be Optional
    Optional<Bookstore> findByName(String name);
    void update(Bookstore oldBookstore, Bookstore newBookstore);
}
