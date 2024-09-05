package com.example.demo.repositories.impl;

import com.example.demo.entities.Bookstore;
import com.example.demo.repositories.BookstoreRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Repository
public class BookstoreRepositoryImpl implements BookstoreRepository {

    private final List<Bookstore> bookstores = new ArrayList<>();

    public void save(Bookstore books) {
        bookstores.add(books);
    }

    public void delete(Bookstore books) {
        bookstores.remove(books);
    }

    public List<Bookstore> findAll() {
        return bookstores;
    }

    public Optional<Bookstore> findByName(String name) {
        return bookstores.stream()
                .filter(bookstore -> name.equals(bookstore.getName()))
                .findFirst();
    }

    public void update(Bookstore oldBookstore, Bookstore newBookstore) {
        int index = bookstores.indexOf(oldBookstore);
        if(index != -1) {
            bookstores.set(index, newBookstore);
        }
    }
}
