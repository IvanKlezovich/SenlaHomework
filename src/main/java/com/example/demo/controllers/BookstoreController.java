package com.example.demo.controllers;

import com.example.demo.dtos.BookstoreDto;
import com.example.demo.dtos.UpdateDto;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.List;

public interface BookstoreController {

    @GetMapping("/allBookstore")
    ResponseEntity<List<BookstoreDto>> getBookstore();

    @PostMapping("/Bookstore")
    ResponseEntity<HttpStatus> createBookstore(@RequestBody BookstoreDto Bookstore);

    @PostMapping("/BookstoreUpdate")
    ResponseEntity<HttpStatus> updateBookstore(@RequestBody UpdateDto<BookstoreDto> Bookstore);

    @PostMapping("/BookstoreDelete")
    ResponseEntity<HttpStatus> deleteBookstore(@RequestBody BookstoreDto Bookstore);
}
