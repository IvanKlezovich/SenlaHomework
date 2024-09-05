package com.example.demo.repositories.impl;

import com.example.demo.entities.BookEdition;
import com.example.demo.repositories.BookEditionRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Repository
public class BookEditionRepositoryImpl implements BookEditionRepository {

    private final List<BookEdition> bookEditionList = new ArrayList<>();

    public void save(BookEdition bookEdition){
        bookEditionList.add(bookEdition);
    }

    public void delete(BookEdition bookEdition){
        bookEditionList.remove(bookEdition);
    }

    public List<BookEdition> findAll(){
        return bookEditionList;
    }

    public Optional<BookEdition> findByBookTitle(String name){
        return bookEditionList.stream()
                .filter(books -> name.equals(books.getBooks().getTitle()))
                .findFirst();
    }

    public void update(BookEdition newBookEdition, BookEdition oldBookEdition){
        int index = bookEditionList.indexOf(oldBookEdition);
        if(index != -1) {
            bookEditionList.set(index, newBookEdition);
        }
    }
}
