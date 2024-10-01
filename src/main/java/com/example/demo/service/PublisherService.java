package com.example.demo.service;

import com.example.demo.dtos.PublisherDto;
import com.example.demo.dtos.ResponseDto;
import com.example.demo.dtos.UpdateDto;

import java.util.List;

public interface PublisherService {
    List<PublisherDto> getAllPublishers();
    ResponseDto delete(PublisherDto publisherDto);
    ResponseDto save(PublisherDto publisherDto);
    ResponseDto update(UpdateDto<PublisherDto> publisherDtoDtoUpdateDto);
}
