package com.example.demo.repositories;

import com.example.demo.entities.Bookstore;
import org.springframework.data.repository.CrudRepository;

public interface BookstoreRepository extends CrudRepository<Bookstore, Long> {
}
