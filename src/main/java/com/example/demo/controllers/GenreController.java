package com.example.demo.controllers;

import com.example.demo.dtos.GenreDto;
import com.example.demo.dtos.SimpleDto;
import com.fasterxml.jackson.core.JsonProcessingException;
import io.swagger.v3.oas.annotations.Operation;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

public interface GenreController {

    @Operation(
            summary = "Получение всех жанров",
            description = "Получение всех жанров происходит по средствам SQL запроса в базу данных"
    )
    @GetMapping("/allGenre")
    ResponseEntity<String> getGenre() throws JsonProcessingException;

//    @Operation(
//            summary = "Добавление жанра",
//            description = "Добавление жанра происходит по средствам SQL запроса в базу данных"
//    )
//    @PostMapping("/genre")
//    ResponseEntity<HttpStatus> createGenre(@RequestBody GenreDto genreDto);
//
//    @Operation(
//            summary = "Изменение жанра",
//            description = "Изменение жанра происходит по средствам SQL запроса в базу данных"
//    )
//    @PostMapping("/genreUpdate")
//    ResponseEntity<HttpStatus> updateGenre(@RequestBody SimpleDto<GenreDto> genreDtoUpdateDto);
//
//    @Operation(
//            summary = "Удаление жанра",
//            description = "Удаление жанра происходит по средствам SQL запроса в базу данных"
//    )
//    @PostMapping("/genreDelete")
//    ResponseEntity<HttpStatus> deleteGenre(@RequestBody GenreDto genreDto);
}
