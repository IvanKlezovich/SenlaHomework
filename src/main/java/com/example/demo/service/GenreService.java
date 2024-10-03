package com.example.demo.service;

import com.example.demo.dtos.GenreDto;
import com.example.demo.dtos.ResponseDto;
import com.example.demo.dtos.SimpleDto;

import java.util.List;

public interface GenreService {
    ResponseDto<GenreDto> getAllGenre();
//    ResponseDto delete(GenreDto genreDto);
//    ResponseDto save(GenreDto genreDto);
//    ResponseDto update(SimpleDto<GenreDto> genreDto);
}
