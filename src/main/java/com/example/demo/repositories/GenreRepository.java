package com.example.demo.repositories;

import com.example.demo.entities.Genre;

import java.util.List;
import java.util.Optional;

import static com.example.demo.repositories.BaseRepository.INSERT;

/**
 * Repository interface for managing {@link Genre} entities.
 * This interface provides methods for saving, deleting, updating, and retrieving genres from the database.
 */
public interface GenreRepository {

    /**
     * The name of the genres table in the database.
     */
    String GENRES_TABLE_NAME = "genres";

    /**
     * SQL query for inserting a new genre into the genres table.
     * The query is formatted with a placeholder for the genre's name.
     */
    String INSERT_GENRES = INSERT.formatted(GENRES_TABLE_NAME, "name_genre", "'%s'");

    /**
     * SQL query for updating an existing genre in the genres table.
     * The query is formatted with placeholders for the genre's name and ID.
     */
    String UPDATE_QUERY = """
            update genres set name_genre = '%s'
            where id = '%d'""";

    /**
     * Saves a new genre to the database.
     *
     * @param genre the genre to save
     */
    void save(Genre genre);

    /**
     * Deletes a genre from the database.
     *
     * @param genre the genre to delete
     */
    void delete(Genre genre);

    /**
     * Retrieves all genres from the database.
     *
     * @return a list of all genres
     */
    List<Genre> findAll();

    /**
     * Retrieves a genre by its name.
     *
     * @param name the name of the genre to find
     * @return an optional containing the genre if found, otherwise empty
     */
    Optional<Genre> findByName(String name);

    /**
     * Retrieves a genre by its ID.
     *
     * @param id the ID of the genre to find
     * @return an optional containing the genre if found, otherwise empty
     */
    Optional<Genre> findById(Long id);

    /**
     * Updates an existing genre in the database.
     *
     * @param oldGenre the old genre data to be updated
     * @param newGenre the new genre data
     */
    void update(Genre oldGenre, Genre newGenre);
}
