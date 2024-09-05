package com.example.demo.repositories;

import com.example.demo.entities.BookEdition;

import java.util.List;
import java.util.Optional;

public interface BookEditionRepository {
    void save(BookEdition bookEdition);
    void delete(BookEdition bookEdition);
    List<BookEdition> findAll(); // TODO method must be Optional
    Optional<BookEdition> findByBookTitle(String name);
    void update(BookEdition newBookEdition, BookEdition oldBookEdition);
}
