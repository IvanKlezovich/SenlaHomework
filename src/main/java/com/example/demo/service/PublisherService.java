package com.example.demo.service;

import com.example.demo.dtos.PublisherDto;
import com.example.demo.dtos.ResponceDto;
import com.example.demo.dtos.UpdateDto;

import java.util.List;

public interface PublisherService {
    List<PublisherDto> getAllPublishers();
    ResponceDto delete(PublisherDto publisherDto);
    ResponceDto save(PublisherDto publisherDto);
    ResponceDto update(UpdateDto<PublisherDto> publisherDtoDtoUpdateDto);
}
