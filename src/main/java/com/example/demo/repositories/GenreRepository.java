package com.example.demo.repositories;

import com.example.demo.entities.Genre;

import java.util.List;
import java.util.Optional;

import static com.example.demo.repositories.BaseRepository.INSERT;

public interface GenreRepository {

    String GENRES_TABLE_NAME = "genres";

    String INSERT_GENRES = INSERT.formatted(GENRES_TABLE_NAME, "name_genre", "'%s'");

    String UPDATE_QUERY = """
            update genres set name_genre = '%s'
            where id = '%d'""";

    void save(Genre genre);

    void delete(Genre genre);

    List<Genre> findAll(); // TODO method must be Optional

    Optional<Genre> findByName(String name);

    Optional<Genre> findById(Long id);

    void update(Genre oldGenre, Genre newGenre);
}
