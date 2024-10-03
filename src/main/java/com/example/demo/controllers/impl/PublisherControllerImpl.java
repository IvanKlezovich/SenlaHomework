package com.example.demo.controllers.impl;

import com.example.demo.controllers.PublisherController;

import com.example.demo.dtos.PublisherDto;
import com.example.demo.dtos.ResponseDto;
import com.example.demo.dtos.SimpleDto;
import com.example.demo.service.PublisherService;
import lombok.AllArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * REST controller for managing {@link PublisherDto} entities.
 * This controller provides endpoints for retrieving, creating, updating, and deleting publishers.
 *
 * @author Klezovich Ivan
 * @since 2023-10-04
 */
@RestController
@RequestMapping("/book")
@AllArgsConstructor
public class PublisherControllerImpl implements PublisherController {

    private PublisherService publisherService;

    /**
     * Retrieves all publishers.
     *
     * @return a ResponseEntity containing a list of publishers in JSON format if publishers exist,
     *         or a NO_CONTENT status if no publishers are found.
     */
    public ResponseEntity<ResponseDto<PublisherDto>> getPublisher() {
        return ResponseEntity.ok().body(publisherService.getAllPublishers());
    }

    /**
     * Creates a new publisher.
     *
     * @param publisherDto the publisher data transfer object containing the publisher details.
     * @return a ResponseEntity with a CREATED status.
     */
    public ResponseEntity<HttpStatus> createPublisher(PublisherDto publisherDto) {
        publisherService.save(publisherDto);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }

    /**
     * Updates an existing publisher.
     *
     * @param publisherDtoUpdateDto the update data transfer object containing the publisher details to be updated.
     * @return a ResponseEntity with an OK status.
     */
    public ResponseEntity<HttpStatus> updatePublisher(SimpleDto<PublisherDto> publisherDtoUpdateDto) {
        publisherService.update(publisherDtoUpdateDto);
        return ResponseEntity.status(HttpStatus.OK).build();
    }

    /**
     * Deletes a publisher.
     *
     * @param publisherDto the publisher data transfer object containing the publisher details to be deleted.
     * @return a ResponseEntity with a NO_CONTENT status.
     */
    public ResponseEntity<HttpStatus> deletePublisher(PublisherDto publisherDto) {
        publisherService.delete(publisherDto);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }
}