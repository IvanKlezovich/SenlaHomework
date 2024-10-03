package com.example.demo.controllers;

import com.example.demo.dtos.PublisherDto;
import com.example.demo.dtos.ResponseDto;
import com.example.demo.dtos.SimpleDto;
import com.fasterxml.jackson.core.JsonProcessingException;
import io.swagger.v3.oas.annotations.Operation;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

public interface PublisherController {

    @Operation(
        summary = "Получение издателей",
        description = "Получение издателей происходит по средствам SQL запроса в базк данных"
    )
    @GetMapping("/allPublisher")
    ResponseEntity<ResponseDto<PublisherDto>> getPublisher() throws JsonProcessingException;

    @Operation(
            summary = "Добавление издателей",
            description = "Добавление издателей происходит по средствам SQL запроса в базк данных"
    )
    @PostMapping("/Publisher")
    ResponseEntity<HttpStatus> createPublisher(@RequestBody PublisherDto publisherDto);

    @Operation(
            summary = "Изменение данных о издателе",
            description = "Изменение данных о издателе происходит по средствам SQL запроса в базк данных"
    )
    @PostMapping("/PublisherUpdate")
    ResponseEntity<HttpStatus> updatePublisher(@RequestBody SimpleDto<PublisherDto> publisherDtoUpdateDto);

    @Operation(
            summary = "Удаление издателей",
            description = "Удаление  издателей происходит по средствам SQL запроса в базк данных"
    )
    @PostMapping("/PublisherDelete")
    ResponseEntity<HttpStatus> deletePublisher(@RequestBody PublisherDto publisherDto);
}
