package com.example.demo.repositories;

import com.example.demo.entities.Books;

import java.util.List;
import java.util.Optional;

public interface BooksRepository{
    void save(Books books);
    void delete(Books books);
    List<Books> findAll(); // TODO method must be Optional
    Optional<Books> findByTitle(String title);
    void update(Books oldBooks, Books newBooks);
}
