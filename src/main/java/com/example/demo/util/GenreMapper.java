package com.example.demo.util;

import com.example.demo.dtos.GenreDto;
import com.example.demo.dtos.create.CreateGenreDto;
import com.example.demo.entities.Genre;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingConstants;

@Mapper(componentModel = MappingConstants.ComponentModel.SPRING)
public interface GenreMapper {
    @Mapping(source = "id", target = "id")
    @Mapping(source = "nameGenre", target = "nameGenre")
    Genre toGenre(GenreDto genreDto);

    @Mapping(source = "id", target = "id")
    @Mapping(source = "nameGenre", target = "nameGenre")
    GenreDto toGenreDto(Genre genre);

    @Mapping(source = "nameGenre", target = "nameGenre")
    Genre toGenre(CreateGenreDto createGenreDto);
}
