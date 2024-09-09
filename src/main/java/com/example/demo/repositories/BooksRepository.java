package com.example.demo.repositories;

import com.example.demo.entities.Books;

import java.util.List;
import java.util.Optional;

import static com.example.demo.repositories.BaseRepository.INSERT;

/**
 * Repository interface for managing {@link Books} entities.
 * This interface provides methods for saving, deleting, updating, and retrieving books from the database.
 */
public interface BooksRepository {

    /**
     * The name of the books table in the database.
     */
    String BOOK_TABLE_NAME = "books";

    /**
     * SQL query for inserting a new book into the books table.
     * The query is formatted with placeholders for the book's title, author ID, and genre ID.
     */
    String INSERT_BOOK = INSERT.formatted(BOOK_TABLE_NAME, "title, author_id, genre_id",
            "'%s',%d,%d");

    /**
     * SQL query for updating an existing book in the books table.
     * The query is formatted with placeholders for the book's title, author ID, genre ID, and ID.
     */
    String UPDATE_QUERY = """
            update books set title = '%s',
            author_id = %d, genre_id = %d
            where id = %d""";

    /**
     * Saves a new book to the database.
     *
     * @param books the book to save
     */
    void save(Books books);

    /**
     * Deletes a book from the database.
     *
     * @param books the book to delete
     */
    void delete(Books books);

    /**
     * Retrieves all books from the database.
     *
     * @return a list of all books
     */
    List<Books> findAll();

    /**
     * Retrieves a book by its title.
     *
     * @param title the title of the book to find
     * @return an optional containing the book if found, otherwise empty
     */
    Optional<Books> findByTitle(String title);

    /**
     * Updates an existing book in the database.
     *
     * @param oldBooks the old book data to be updated
     * @param newBooks the new book data
     */
    void update(Books oldBooks, Books newBooks);
}
