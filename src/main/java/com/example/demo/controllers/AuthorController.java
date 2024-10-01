package com.example.demo.controllers;

import com.example.demo.dtos.AuthorDto;
import com.example.demo.dtos.UpdateDto;
import com.fasterxml.jackson.core.JsonProcessingException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

public interface AuthorController {

    @GetMapping("/allAuthor")
    ResponseEntity<String> getAuthor() throws JsonProcessingException;

    @PostMapping("/author")
    ResponseEntity<HttpStatus> createAuthor(@RequestBody AuthorDto authorDto);

    @PostMapping("/authorUpdate")
    ResponseEntity<HttpStatus> updateAuthor(@RequestBody UpdateDto<AuthorDto> authorDtoUpdateDto);

    @PostMapping("/authorDelete")
    ResponseEntity<HttpStatus> deleteAuthor(@RequestBody AuthorDto authorDto);
}
