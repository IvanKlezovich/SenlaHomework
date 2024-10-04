package com.example.demo.util.create;

import com.example.demo.entities.Bookstore;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingConstants;

@Mapper(componentModel = MappingConstants.ComponentModel.SPRING)
public interface CreateBookstoreMapper {
    @Mapping(target = "id", expression = "java(java.util.UUID.randomUUID())")
    @Mapping(target = "name", source = "name")
    @Mapping(target = "deliveryDate", source = "deliveryDate")
    @Mapping(target = "capacity", source = "capacity")
    Bookstore createBookstore(String name, Long deliveryDate,Integer capacity);
}
