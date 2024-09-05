package com.example.demo.controllers.impl;

import com.example.demo.controllers.BooksController;
import com.example.demo.dtos.BooksDto;
import com.example.demo.dtos.UpdateDto;
import com.example.demo.service.BooksService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * REST controller for managing {@link BooksDto} entities.
 * This controller provides endpoints for retrieving, creating, updating, and deleting books.
 *
 * @author Klezovich Ivan
 * @since 2023-10-04
 */
@RestController
@RequestMapping("/book")
@RequiredArgsConstructor
public class BooksControllerImpl implements BooksController {

    private final BooksService booksService;
    private final ObjectMapper objectMapper;

    /**
     * Retrieves all books.
     *
     * @return a ResponseEntity containing a list of books in JSON format if books exist,
     *         or a NO_CONTENT status if no books are found.
     * @throws JsonProcessingException if there is an error during JSON processing.
     */
    public ResponseEntity<String> getBooks() throws JsonProcessingException {
        List<BooksDto> books = booksService.getAllBooks();
        return (books.isEmpty()) ? ResponseEntity.noContent().build() : ResponseEntity.ok(objectMapper.writeValueAsString(books));
    }

    /**
     * Creates a new book.
     *
     * @param book the book data transfer object containing the book details.
     * @return a ResponseEntity with a CREATED status.
     */
    public ResponseEntity<HttpStatus> createBook(@RequestBody BooksDto book) {
        booksService.save(book);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }

    /**
     * Updates an existing book.
     *
     * @param book the update data transfer object containing the book details to be updated.
     * @return a ResponseEntity with an OK status.
     */
    public ResponseEntity<HttpStatus> updateBook(@RequestBody UpdateDto<BooksDto> book) {
        booksService.update(book);
        return ResponseEntity.status(HttpStatus.OK).build();
    }

    /**
     * Deletes a book.
     *
     * @param book the book data transfer object containing the book details to be deleted.
     * @return a ResponseEntity with a NO_CONTENT status.
     */
    public ResponseEntity<HttpStatus> deleteBook(BooksDto book) {
        booksService.delete(book);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }
}
