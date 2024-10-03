package com.example.demo.controllers.impl;


import com.example.demo.controllers.GenreController;
import com.example.demo.dtos.GenreDto;
import com.example.demo.dtos.SimpleDto;
import com.example.demo.service.GenreService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.AllArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * REST controller for managing {@link GenreDto} entities.
 * This controller provides endpoints for retrieving, creating, updating, and deleting genres.
 *
 * @author Klezovich Ivan
 * @since 2023-10-04
 */
@RestController
@RequestMapping("/book")
@AllArgsConstructor
public class GenreControllerImpl implements GenreController {

    private final GenreService genreService;
    private final ObjectMapper objectMapper;

    /**
     * Retrieves all genres.
     *
     * @return a ResponseEntity containing a list of genres in JSON format if genres exist,
     *         or a NO_CONTENT status if no genres are found.
     * @throws JsonProcessingException if there is an error during JSON processing.
     */
    @Override
    public ResponseEntity<String> getGenre() throws JsonProcessingException {
        return ResponseEntity.ok(genreService.getAllGenre().toString());

    }

    /**
     * Creates a new genre.
     *
     * @param genreDto the genre data transfer object containing the genre details.
     * @return a ResponseEntity with a CREATED status.
     */
//    @Override
//    public ResponseEntity<HttpStatus> createGenre(GenreDto genreDto) {
//        genreService.save(genreDto);
//        return ResponseEntity.status(HttpStatus.CREATED).build();
//    }
//
//    /**
//     * Updates an existing genre.
//     *
//     * @param genreDtoUpdateDto the update data transfer object containing the genre details to be updated.
//     * @return a ResponseEntity with an OK status.
//     */
//    @Override
//    public ResponseEntity<HttpStatus> updateGenre(SimpleDto<GenreDto> genreDtoUpdateDto) {
//        genreService.update(genreDtoUpdateDto);
//        return ResponseEntity.status(HttpStatus.OK).build();
//    }
//
//    /**
//     * Deletes a genre.
//     *
//     * @param genreDto the genre data transfer object containing the genre details to be deleted.
//     * @return a ResponseEntity with a NO_CONTENT status.
//     */
//    @Override
//    public ResponseEntity<HttpStatus> deleteGenre(GenreDto genreDto) {
//        genreService.delete(genreDto);
//        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
//    }
}