package com.example.demo.repositories;

import com.example.demo.entities.Genre;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.UUID;

/**
 * Repository interface for managing {@link Genre} entities.
 * This interface provides methods for saving, deleting, updating, and retrieving genres from the database.
 */
public interface GenreRepository extends CrudRepository<Genre, UUID> {

    @Modifying
    @Query("update Genre g set g.nameGenre = :name where g.id = :id")
    void updateGenreById(UUID id, String name);
}
