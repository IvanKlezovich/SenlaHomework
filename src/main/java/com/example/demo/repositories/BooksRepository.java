package com.example.demo.repositories;

import com.example.demo.entities.Books;

import java.util.List;
import java.util.Optional;

import static com.example.demo.repositories.BaseRepository.INSERT;

public interface BooksRepository{

    String BOOK_TABLE_NAME = "books";

    String INSERT_BOOK = INSERT.formatted(BOOK_TABLE_NAME, "title, author_id, genre_id",
            "'%s',%d,%d");

    String UPDATE_QUERY = """
            update books set title = '%s',
            author_id = %d, genre_id = %d
            where id = %d""";

    void save(Books books);

    void delete(Books books);

    List<Books> findAll(); // TODO method must be Optional

    Optional<Books> findByTitle(String title);

    void update(Books oldBooks, Books newBooks);
}
