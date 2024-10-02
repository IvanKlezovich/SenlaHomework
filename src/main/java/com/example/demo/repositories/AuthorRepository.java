package com.example.demo.repositories;

import com.example.demo.entities.Author;
import org.springframework.data.repository.Repository;

import java.util.List;
import java.util.Objects;
import java.util.Optional;

/**
 * Repository interface for managing {@link Author} entities.
 * This interface provides methods for saving, deleting, updating, and retrieving authors from the database.
 */
public interface AuthorRepository extends Repository<Author, Long> {

}
