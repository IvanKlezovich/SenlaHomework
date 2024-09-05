package com.example.demo.controllers.impl;

import com.example.demo.controllers.AuthorController;
import com.example.demo.dtos.AuthorDto;
import com.example.demo.dtos.UpdateDto;
import com.example.demo.service.AuthorService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.AllArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * REST controller for managing {@link AuthorDto} entities.
 * This controller provides endpoints for retrieving, creating, updating, and deleting authors.
 *
 * @author Klezovich Ivan
 * @since 2023-10-04
 */
@RestController
@RequestMapping("/author")
@AllArgsConstructor
public class AuthorControllerImpl implements AuthorController {

    private AuthorService authorService;
    private ObjectMapper objectMapper;

    /**
     * Retrieves all authors.
     *
     * @return a ResponseEntity containing a list of authors in JSON format if authors exist,
     *         or a NO_CONTENT status if no authors are found.
     * @throws JsonProcessingException if there is an error during JSON processing.
     */
    public ResponseEntity<String> getAuthor() throws JsonProcessingException {
        List<AuthorDto> authors = authorService.getAllAuthor();
        return (authors.isEmpty()) ? ResponseEntity.noContent().build() : ResponseEntity.ok(objectMapper.writeValueAsString(authors));
    }

    /**
     * Creates a new author.
     *
     * @param authorDto the author data transfer object containing the author details.
     * @return a ResponseEntity with a CREATED status.
     */
    public ResponseEntity<HttpStatus> createAuthor(AuthorDto authorDto) {
        authorService.save(authorDto);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }

    /**
     * Updates an existing author.
     *
     * @param author the update data transfer object containing the author details to be updated.
     * @return a ResponseEntity with an OK status.
     */
    public ResponseEntity<HttpStatus> updateAuthor(UpdateDto<AuthorDto> author) {
        authorService.update(author);
        return ResponseEntity.status(HttpStatus.OK).build();
    }

    /**
     * Deletes an author.
     *
     * @param author the author data transfer object containing the author details to be deleted.
     * @return a ResponseEntity with a NO_CONTENT status.
     */
    public ResponseEntity<HttpStatus> deleteAuthor(AuthorDto author) {
        authorService.delete(author);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }
}