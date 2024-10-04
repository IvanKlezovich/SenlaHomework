package com.example.demo.service;

import com.example.demo.dtos.BookstoreDto;
import com.example.demo.dtos.IdDto;
import com.example.demo.dtos.ResponseDto;
import com.example.demo.dtos.SimpleDto;
import com.example.demo.dtos.create.CreateBookstoreDto;

public interface BookstoreService {

    ResponseDto<BookstoreDto> getAllBookstore();

    ResponseDto<BookstoreDto> getBookstore(IdDto idDto);

    ResponseDto<BookstoreDto> delete(IdDto idDto);

    ResponseDto<BookstoreDto> save(CreateBookstoreDto createBookstoreDto);

    ResponseDto<BookstoreDto> update(SimpleDto<BookstoreDto> bookstoreDto);
}
