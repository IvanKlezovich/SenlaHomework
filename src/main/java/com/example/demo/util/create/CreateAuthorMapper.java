package com.example.demo.util.create;

import com.example.demo.entities.Author;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingConstants;

@Mapper(componentModel = MappingConstants.ComponentModel.SPRING)
public interface CreateAuthorMapper {

    @Mapping(target = "id", expression = "java(java.util.UUID.randomUUID())")
    @Mapping(source = "fullName", target = "fullName")
    @Mapping(source = "biography", target = "biography")
    @Mapping(source = "birthDate", target = "birthDate")
    @Mapping(source = "country", target = "country")
    @Mapping(target = "isAlive", expression = "java(java.lang.Boolean.TRUE)")
    Author createAuthor(String fullName, String biography, Long birthDate, String country);
}
