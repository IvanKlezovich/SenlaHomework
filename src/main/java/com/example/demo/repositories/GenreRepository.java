package com.example.demo.repositories;

import com.example.demo.entities.Genre;
import org.springframework.data.repository.CrudRepository;

/**
 * Repository interface for managing {@link Genre} entities.
 * This interface provides methods for saving, deleting, updating, and retrieving genres from the database.
 */
public interface GenreRepository extends CrudRepository<Genre, Long> {


}
