package com.example.demo.service;

import com.example.demo.dtos.GenreDto;
import com.example.demo.dtos.IdDto;
import com.example.demo.dtos.ResponseDto;
import com.example.demo.dtos.SimpleDto;
import com.example.demo.dtos.create.CreateGenreDto;

public interface GenreService {
    ResponseDto<GenreDto> getAllGenre();
    ResponseDto<GenreDto> delete(IdDto idDto);
    ResponseDto<GenreDto> save(CreateGenreDto createGenreDto);
    ResponseDto<GenreDto> update(SimpleDto<CreateGenreDto> genreDto);
}
