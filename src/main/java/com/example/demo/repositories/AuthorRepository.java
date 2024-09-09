package com.example.demo.repositories;

import com.example.demo.entities.Author;

import java.util.List;
import java.util.Optional;

public interface AuthorRepository extends BaseRepository {

    String AUTHOR_TABLE_NAME = "authors";

    String INSERT_AUTHOR = INSERT.formatted(AUTHOR_TABLE_NAME, "full_name, biography, birth_date, country",
            "'%s','%s',%d,'%s'");

    String UPDATE_QUERY = """
            update authors set full_name = '%s',
            biography = '%s', birth_date = %d,
            country = '%s' where id = %d
            """;

//    String UPDATE_AUTHOR = UPDATE.formatted(AUTHOR_TABLE_NAME, "full_name = '%s', biography = '%s'," +
//            " birth_date = '%s', country = '%s'", "%d");

    void save(Author author);

    void delete(Author author);

    List<Author> findAll(); // TODO method must be Optional

    Optional<Author> findByName(String name);

    Optional<Author> findById(Long id);

    void update(Author newAuthor, Author oldAuthor);
}
