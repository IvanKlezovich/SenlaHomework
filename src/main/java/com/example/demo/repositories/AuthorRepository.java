package com.example.demo.repositories;

import com.example.demo.entities.Author;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

/**
 * Repository interface for managing {@link Author} entities.
 * This interface provides methods for saving, deleting, updating, and retrieving authors from the database.
 */
public interface AuthorRepository extends CrudRepository<Author, Long> {

    @Query("select a from Author a")
    Optional<List<Author>> findAllAuthors();

    @Query("select a from Author a where a.id = :id")
    Optional<Author> findAuthorById(Long id);

    @Query("select a from Author a where a.fullName = :name")
    Optional<Author> findAuthorByFullName(String name);

    @Modifying
    @Query("update Author a set a.fullName = :name, a.biography = :biography, " +
            "a.birthDate = :birthdate, a.country =  :country where a.id = :id")
    void updateAuthorById(Long id, String name, Long birthdate, String country);

    @Modifying
    @Query("update Author a set a.isAlive = false where a.id = :id")
    void deleteAuthorById(Long author);
}
