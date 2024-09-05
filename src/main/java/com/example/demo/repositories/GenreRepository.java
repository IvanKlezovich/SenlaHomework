package com.example.demo.repositories;

import com.example.demo.entities.Genre;

import java.util.List;
import java.util.Optional;

public interface GenreRepository {
    void save(Genre genre);
    void delete(Genre genre);
    List<Genre> findAll(); // TODO method must be Optional
    Optional<Genre> findByName(String name);
    void update(Genre oldGenre, Genre newGenre);
}
