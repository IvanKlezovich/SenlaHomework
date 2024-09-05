package com.example.demo.service;

import com.example.demo.dtos.AuthorDto;
import com.example.demo.dtos.ResponceDto;
import com.example.demo.dtos.UpdateDto;

import java.util.List;

public interface AuthorService {
    List<AuthorDto> getAllAuthor();
    ResponceDto delete(AuthorDto authorDto);
    ResponceDto save(AuthorDto authorDto);
    ResponceDto update(UpdateDto<AuthorDto> authorDto);
}
