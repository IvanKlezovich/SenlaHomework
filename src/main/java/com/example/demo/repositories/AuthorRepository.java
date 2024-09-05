package com.example.demo.repositories;

import com.example.demo.entities.Author;

import java.util.List;
import java.util.Optional;

public interface AuthorRepository {
    void save(Author author);
    void delete(Author author);
    List<Author> findAll(); // TODO method must be Optional
    Optional<Author> findByName(String name);
    void update(Author newAuthor, Author oldAuthor);
}
