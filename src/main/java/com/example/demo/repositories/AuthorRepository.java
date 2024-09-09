package com.example.demo.repositories;

import com.example.demo.entities.Author;

import java.util.List;
import java.util.Optional;

/**
 * Repository interface for managing {@link Author} entities.
 * This interface provides methods for saving, deleting, updating, and retrieving authors from the database.
 */
public interface AuthorRepository extends BaseRepository {

    /**
     * The name of the authors table in the database.
     */
    String AUTHOR_TABLE_NAME = "authors";

    /**
     * SQL query for inserting a new author into the authors table.
     * The query is formatted with placeholders for the author's full name, biography, birth date, and country.
     */
    String INSERT_AUTHOR = INSERT.formatted(AUTHOR_TABLE_NAME, "full_name, biography, birth_date, country",
            "'%s','%s',%d,'%s'");

    /**
     * SQL query for updating an existing author in the authors table.
     * The query is formatted with placeholders for the author's full name, biography, birth date, country, and ID.
     */
    String UPDATE_QUERY = """
            update authors set full_name = '%s',
            biography = '%s', birth_date = %d,
            country = '%s' where id = %d
            """;

    /**
     * Saves a new author to the database.
     *
     * @param author the author to save
     */
    void save(Author author);

    /**
     * Deletes an author from the database.
     *
     * @param author the author to delete
     */
    void delete(Author author);

    /**
     * Retrieves all authors from the database.
     *
     * @return a list of all authors
     */
    List<Author> findAll();

    /**
     * Retrieves an author by their name.
     *
     * @param name the name of the author to find
     * @return an optional containing the author if found, otherwise empty
     */
    Optional<Author> findByName(String name);

    /**
     * Retrieves an author by their ID.
     *
     * @param id the ID of the author to find
     * @return an optional containing the author if found, otherwise empty
     */
    Optional<Author> findById(Long id);

    /**
     * Updates an existing author in the database.
     *
     * @param newAuthor the new author data
     * @param oldAuthor the old author data to be updated
     */
    void update(Author newAuthor, Author oldAuthor);
}
