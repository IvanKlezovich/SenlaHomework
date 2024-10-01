package com.example.demo.repositories;

import com.example.demo.entities.Books;
import org.springframework.data.repository.CrudRepository;

/**
 * Repository interface for managing {@link Books} entities.
 * This interface provides methods for saving, deleting, updating, and retrieving books from the database.
 */
public interface BooksRepository extends CrudRepository<Books, Long> {
}
