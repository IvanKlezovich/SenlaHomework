package com.example.demo.service;

import com.example.demo.dtos.BooksDto;
import com.example.demo.dtos.ResponceDto;
import com.example.demo.dtos.UpdateDto;

import java.util.List;

public interface BooksService {
    List<BooksDto> getAllBooks();
    ResponceDto delete(BooksDto booksDto);
    ResponceDto save(BooksDto booksDto);
    ResponceDto update(UpdateDto<BooksDto> booksDto);
}
