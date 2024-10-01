package com.example.demo.service;

import com.example.demo.dtos.GenreDto;
import com.example.demo.dtos.ResponseDto;
import com.example.demo.dtos.UpdateDto;

import java.util.List;

public interface GenreService {
    List<GenreDto> getAllGenre();
    ResponseDto delete(GenreDto genreDto);
    ResponseDto save(GenreDto genreDto);
    ResponseDto update(UpdateDto<GenreDto> genreDto);
}
