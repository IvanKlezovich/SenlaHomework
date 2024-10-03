package com.example.demo.service;

import com.example.demo.dtos.BooksDto;
import com.example.demo.dtos.ResponseDto;
import com.example.demo.dtos.SimpleDto;

import java.util.List;

public interface BooksService {
    List<BooksDto> getAllBooks();
    ResponseDto delete(BooksDto booksDto);
    ResponseDto save(BooksDto booksDto);
    ResponseDto update(SimpleDto<BooksDto> booksDto);
}
