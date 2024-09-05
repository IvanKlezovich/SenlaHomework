package com.example.demo.repositories.impl;

import com.example.demo.entities.Genre;
import com.example.demo.repositories.GenreRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Repository
public class GenreRepositoryImpl implements GenreRepository {

    private final List<Genre> genreList = new ArrayList<>();

    public void save(Genre genre) {
        genreList.add(genre);
    }

    public void delete(Genre genre) {
        genreList.remove(genre);
    }

    public List<Genre> findAll() {
        return genreList;
    }

    public Optional<Genre> findByName(String name) {
        return genreList.stream()
                .filter(genre -> name.equals(genre.getNameGenre()))
                .findFirst();
    }

    public void update(Genre oldGenre, Genre newGenre) {
        int index = genreList.indexOf(oldGenre);
        if(index != -1) {
            genreList.set(index, newGenre);
        }
    }
}
