package com.example.demo.service;

import com.example.demo.dtos.AuthorDto;
import com.example.demo.dtos.ResponseDto;
import com.example.demo.dtos.UpdateDto;

import java.util.List;

public interface BookstoreService {
    List<AuthorDto> getAllAuthor();
    ResponseDto delete(AuthorDto authorDto);
    ResponseDto save(AuthorDto authorDto);
    ResponseDto update(UpdateDto<AuthorDto> authorDto);
}
