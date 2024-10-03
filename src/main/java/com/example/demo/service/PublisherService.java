package com.example.demo.service;

import com.example.demo.dtos.PublisherDto;
import com.example.demo.dtos.ResponseDto;
import com.example.demo.dtos.SimpleDto;


public interface PublisherService {
    ResponseDto<PublisherDto> getAllPublishers();
    ResponseDto<PublisherDto> delete(PublisherDto publisherDto);
    ResponseDto<PublisherDto> save(PublisherDto publisherDto);
    ResponseDto<PublisherDto> update(SimpleDto<PublisherDto> publisherDtoDtoUpdateDto);
}
