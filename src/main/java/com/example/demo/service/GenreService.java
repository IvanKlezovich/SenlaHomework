package com.example.demo.service;

import com.example.demo.dtos.GenreDto;
import com.example.demo.dtos.ResponceDto;
import com.example.demo.dtos.UpdateDto;

import java.util.List;

public interface GenreService {
    List<GenreDto> getAllGenre();
    ResponceDto delete(GenreDto genreDto);
    ResponceDto save(GenreDto genreDto);
    ResponceDto update(UpdateDto<GenreDto> genreDto);
}
