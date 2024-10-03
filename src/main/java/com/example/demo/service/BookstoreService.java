package com.example.demo.service;

import com.example.demo.dtos.BookstoreDto;
import com.example.demo.dtos.ResponseDto;
import com.example.demo.dtos.SimpleDto;

public interface BookstoreService {
    ResponseDto<BookstoreDto> getAllBookstore();
    ResponseDto<BookstoreDto> delete(BookstoreDto bookstoreDto);
    ResponseDto<BookstoreDto> save(BookstoreDto bookstoreDto);
    ResponseDto<BookstoreDto> update(SimpleDto<BookstoreDto> bookstoreDto);
}
