package com.example.demo.controllers;

import com.example.demo.dtos.*;
import com.example.demo.dtos.create.CreateAuthorDto;
import io.swagger.v3.oas.annotations.Operation;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

public interface AuthorController {

    @Operation(
            summary = "Получение всех авторов",
            description = "Получение всех авторов происходит по средствам SQL запроса в базу данных"
    )
    @GetMapping(value = "/allAuthor", produces = "application/json")
    ResponseEntity<ResponseDto<AuthorDto>> getAllAuthor();

    @Operation(
            summary = "Добавление автора",
            description = "Добавление автора происходит по средствам SQL запроса в базу данных"
    )
    @PostMapping("/author")
    ResponseEntity<HttpStatus> createAuthor(
            @RequestBody CreateAuthorDto createAuthorDto);

    @Operation(
            summary = "Изменение данных об авторе",
            description = "Изменение данных об авторе происходит по средствам SQL запроса в базу данных"
    )
    @PostMapping("/authorUpdate")
    ResponseEntity<HttpStatus> updateAuthor(
            @RequestBody SimpleDto<AuthorDto> authorDtoUpdateDto);

    @Operation(
            summary = "Удаление данных об авторе",
            description = "Удаление данных об авторе происходит по средствам SQL запроса в базу данных"
    )
    @PostMapping("/authorDelete")
    ResponseEntity<HttpStatus> deleteAuthor(
            @RequestBody IdDto idDto);
}
