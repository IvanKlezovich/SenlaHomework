package com.example.demo.repositories.impl;

import com.example.demo.entities.Books;
import com.example.demo.repositories.BooksRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Repository
public class BooksRepositoryImpl implements BooksRepository {

    private final List<Books> booksList = new ArrayList<>();

    public void save(Books books) {
        booksList.add(books);
    }

    public void delete(Books books) {
        booksList.remove(books);
    }

    public List<Books> findAll() {
        return booksList;
    }

    public Optional<Books> findByTitle(String title) {
        return booksList.stream()
                .filter(books -> title.equals(books.getTitle()))
                .findFirst();
    }

    public void update(Books oldBooks, Books newBooks) {
        int index = booksList.indexOf(oldBooks);
        if(index != -1) {
            booksList.set(index, newBooks);
        }
    }
}
