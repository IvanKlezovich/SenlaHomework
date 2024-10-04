package com.example.demo.service;

import com.example.demo.dtos.*;
import com.example.demo.dtos.create.CreateAuthorDto;

public interface AuthorService {
    ResponseDto<AuthorDto> getAllAuthor();

    ResponseDto<AuthorDto> getAuthor(IdDto idDto);

    ResponseDto<AuthorDto> delete(IdDto idDto);

    ResponseDto<AuthorDto> save(CreateAuthorDto createAuthorDto);

    ResponseDto<AuthorDto> update(SimpleDto<AuthorDto> authorDto);
}
