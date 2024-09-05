package com.example.demo.controllers;

import com.example.demo.dtos.GenreDto;
import com.example.demo.dtos.UpdateDto;
import com.fasterxml.jackson.core.JsonProcessingException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.List;

public interface GenreController {

    @GetMapping("/allGenre")
    ResponseEntity<String> getGenre() throws JsonProcessingException;

    @PostMapping("/genre")
    ResponseEntity<HttpStatus> createGenre(@RequestBody GenreDto genreDto);

    @PostMapping("/genreUpdate")
    ResponseEntity<HttpStatus> updateGenre(@RequestBody UpdateDto<GenreDto> genreDtoUpdateDto);

    @PostMapping("/genreDelete")
    ResponseEntity<HttpStatus> deleteGenre(@RequestBody GenreDto genreDto);
}
