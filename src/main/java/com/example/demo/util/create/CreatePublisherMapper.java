package com.example.demo.util.create;

import com.example.demo.entities.Publisher;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingConstants;

@Mapper(componentModel = MappingConstants.ComponentModel.SPRING)
public interface CreatePublisherMapper {

    @Mapping(target = "id", expression = "java(java.util.UUID.randomUUID())")
    @Mapping(target = "name", source = "name")
    @Mapping(target = "address", source = "address")
    Publisher createPublisher(String name, String address);
}
