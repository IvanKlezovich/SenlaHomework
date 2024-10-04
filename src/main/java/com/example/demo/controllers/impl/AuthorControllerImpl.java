package com.example.demo.controllers.impl;

import com.example.demo.controllers.AuthorController;
import com.example.demo.dtos.*;
import com.example.demo.dtos.create.CreateAuthorDto;
import com.example.demo.service.AuthorService;
import lombok.AllArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * REST controller for managing {@link AuthorDto} entities.
 * This controller provides endpoints for retrieving, creating, updating, and deleting authors.
 *
 * @author Klezovich Ivan
 * @since 2024-10-04
 */
@RestController
@RequestMapping("/author")
@AllArgsConstructor
public class AuthorControllerImpl implements AuthorController {

    private AuthorService authorService;

    /**
     * Retrieves all authors.
     *
     * @return a ResponseEntity containing a list of authors in JSON format if authors exist,
     *         or a NO_CONTENT status if no authors are found.
     */
    public ResponseEntity<ResponseDto<AuthorDto>> getAllAuthor() {
        ResponseDto<AuthorDto> answer = authorService.getAllAuthor();
        return ResponseEntity.ok(answer);
    }

    /**
     * Creates a new author.
     *
     * @param createAuthorDto the author data transfer object containing the author details.
     * @return a ResponseEntity with a CREATED status.
     */
    public ResponseEntity<HttpStatus> createAuthor(CreateAuthorDto createAuthorDto) {
        authorService.save(createAuthorDto);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }

    /**
     * Updates an existing author.
     *
     * @param author the update data transfer object containing the author details to be updated.
     * @return a ResponseEntity with an OK status.
     */
    public ResponseEntity<HttpStatus> updateAuthor(SimpleDto<AuthorDto> author) {
        authorService.update(author);
        return ResponseEntity.status(HttpStatus.OK).build();
    }

    /**
     * Deletes an author.
     *
     * @param idDto the author data transfer object containing the author details to be deleted.
     * @return a ResponseEntity with a NO_CONTENT status.
     */
    public ResponseEntity<HttpStatus> deleteAuthor(IdDto idDto) {
        authorService.delete(idDto);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }

    public ResponseEntity<HttpStatus> deathAuthor(IdDto idDto){
        return null;
    }
}