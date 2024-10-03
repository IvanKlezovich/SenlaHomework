package com.example.demo.controllers;

import com.example.demo.dtos.BooksDto;
import com.example.demo.dtos.SimpleDto;
import com.fasterxml.jackson.core.JsonProcessingException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/books")
public interface BooksController {

    @GetMapping("/allBooks")
    ResponseEntity<String> getBooks() throws JsonProcessingException;

    @PostMapping("/book")
    ResponseEntity<HttpStatus> createBook(@RequestBody BooksDto book);

    @PostMapping("/bookUpdate")
    ResponseEntity<HttpStatus> updateBook(@RequestBody SimpleDto<BooksDto> book);

    @PostMapping("/bookDelete")
    ResponseEntity<HttpStatus> deleteBook(@RequestBody BooksDto book);
}
