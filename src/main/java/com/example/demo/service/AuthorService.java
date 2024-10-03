package com.example.demo.service;

import com.example.demo.dtos.AuthorDto;
import com.example.demo.dtos.ResponseDto;
import com.example.demo.dtos.SimpleDto;

public interface AuthorService {
    ResponseDto<AuthorDto> getAllAuthor();

    ResponseDto<AuthorDto> getAuthor(Long id);

    ResponseDto<AuthorDto> delete(AuthorDto authorDto);

    ResponseDto<AuthorDto> save(AuthorDto authorDto);

    ResponseDto<AuthorDto> update(SimpleDto<AuthorDto> authorDto);
}
