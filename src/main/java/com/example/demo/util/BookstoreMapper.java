package com.example.demo.util;

import com.example.demo.dtos.BookstoreDto;
import com.example.demo.entities.Bookstore;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingConstants;

@Mapper(componentModel = MappingConstants.ComponentModel.SPRING)
public interface BookstoreMapper {

    @Mapping(source = "id", target = "id")
    @Mapping(source = "name", target = "name")
    @Mapping(source = "deliveryDate", target = "deliveryDate")
    @Mapping(source = "capacity", target = "capacity")
    Bookstore toBookstore(BookstoreDto bookstoreDto);

    @Mapping(source = "id", target = "id")
    @Mapping(source = "name", target = "name")
    @Mapping(source = "deliveryDate", target = "deliveryDate")
    @Mapping(source = "capacity", target = "capacity")
    BookstoreDto toBookstoreDto(Bookstore bookstore);
}
