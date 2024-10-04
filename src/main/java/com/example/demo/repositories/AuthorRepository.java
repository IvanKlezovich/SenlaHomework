package com.example.demo.repositories;

import com.example.demo.entities.Author;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.Optional;
import java.util.UUID;

/**
 * Repository interface for managing {@link Author} entities.
 * This interface provides methods for saving, deleting, updating, and retrieving authors from the database.
 */
public interface AuthorRepository extends CrudRepository<Author, UUID> {

    @Query("select a from Author a where a.id = :id")
    Optional<Author> findAuthorById(UUID id);

    @Transactional
    @Modifying
    @Query("update Author a set a.fullName = :name, a.biography = :biography, " +
            "a.birthDate = :birthdate, a.country =  :country where a.id = :id")
    void updateAuthorById(@Param("id") UUID id,@Param("name") String name, @Param("biography") String biography,
                          @Param("birthdate") Long birthdate,@Param("country") String country);

    @Modifying
    @Query("update Author a set a.isAlive = false where a.id = :id")
    void deleteAuthorById(UUID id);
}
