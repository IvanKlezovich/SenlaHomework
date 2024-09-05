package com.example.demo.repositories.impl;

import com.example.demo.entities.Author;
import com.example.demo.repositories.AuthorRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Repository
public class AuthorRepositoryImpl implements AuthorRepository {

    private final List<Author> authorList = new ArrayList<>();

    public void save(Author author) {
        authorList.add(author);
    }

    public void delete(Author author) {
        authorList.remove(author);
    }

    public List<Author> findAll() {
        return authorList;
    }

    public Optional<Author> findByName(String name) {
        return authorList.stream()
                .filter(author -> name.equals(author.getFullName()))
                .findFirst();
    }

    public void update(Author newAuthor, Author oldAuthor) {
        int index = authorList.indexOf(oldAuthor);
        if(index != -1) {
            authorList.set(index, newAuthor);
        }
    }
}
