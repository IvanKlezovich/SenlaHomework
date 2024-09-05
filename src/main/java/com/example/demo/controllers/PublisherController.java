package com.example.demo.controllers;

import com.example.demo.dtos.PublisherDto;
import com.example.demo.dtos.UpdateDto;
import com.fasterxml.jackson.core.JsonProcessingException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.List;

public interface PublisherController {

    @GetMapping("/allPublisher")
    ResponseEntity<String> getPublisher() throws JsonProcessingException;

    @PostMapping("/Publisher")
    ResponseEntity<HttpStatus> createPublisher(@RequestBody PublisherDto publisherDto);

    @PostMapping("/PublisherUpdate")
    ResponseEntity<HttpStatus> updatePublisher(@RequestBody UpdateDto<PublisherDto> publisherDtoUpdateDto);

    @PostMapping("/PublisherDelete")
    ResponseEntity<HttpStatus> deletePublisher(@RequestBody PublisherDto publisherDto);
}
