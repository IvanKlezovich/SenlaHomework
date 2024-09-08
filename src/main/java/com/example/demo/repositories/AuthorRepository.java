package com.example.demo.repositories;

import com.example.demo.entities.Author;

import java.util.List;
import java.util.Optional;

public interface AuthorRepository extends BaseRepository{

    String UPDATE_QUERY = """
                               update author set full_name = '%s',
                               biography = '%s', birth_date = '%s',
                               country = '%s', where id = %s""";

    void save(Author author);
    void delete(Author author);
    List<Author> findAll(); // TODO method must be Optional
    Optional<Author> findByName(String name);
    void update(Author newAuthor, Author oldAuthor);
}
