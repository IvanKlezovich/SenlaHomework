package com.example.demo.controllers;

import com.example.demo.dtos.BookEditionDto;
import com.example.demo.dtos.UpdateDto;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.List;

public interface BookEditionController {

    @GetMapping("/allBookEdition")
    ResponseEntity<List<BookEditionDto>> getBookEdition();

    @PostMapping("/BookEdition")
    ResponseEntity<HttpStatus> createBookEdition(@RequestBody BookEditionDto BookEdition);

    @PostMapping("/BookEditionUpdate")
    ResponseEntity<HttpStatus> updateBookEdition(@RequestBody UpdateDto<BookEditionDto> BookEdition);

    @PostMapping("/BookEditionDelete")
    ResponseEntity<HttpStatus> deleteBookEdition(@RequestBody BookEditionDto BookEdition);
}
