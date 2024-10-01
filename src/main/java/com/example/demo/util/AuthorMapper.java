package com.example.demo.util;

import com.example.demo.dtos.AuthorDto;
import com.example.demo.entities.Author;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingConstants;

@Mapper(componentModel = MappingConstants.ComponentModel.SPRING)
public interface AuthorMapper {
    @Mapping(source = "fullName", target = "fullName")
    @Mapping(source = "biography", target = "biography")
    @Mapping(source = "birthDate", target = "birthDate")
    @Mapping(source = "country", target = "country")
    Author toAuthor(AuthorDto authorDto);


    @Mapping(source = "fullName", target = "fullName")
    @Mapping(source = "biography", target = "biography")
    @Mapping(source = "birthDate", target = "birthDate")
    @Mapping(source = "country", target = "country")
    AuthorDto toAuthorDto(Author author);
}
