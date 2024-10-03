package com.example.demo.service.impl;

import com.example.demo.dtos.PublisherDto;
import com.example.demo.dtos.ResponseDto;
import com.example.demo.dtos.SimpleDto;
import com.example.demo.entities.Publisher;
import com.example.demo.repositories.PublisherRepository;
import com.example.demo.service.PublisherService;
import com.example.demo.util.PublisherMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Service implementation for managing {@link PublisherDto} entities.
 * This service provides methods for retrieving, creating, updating, and deleting publishers.
 *
 * @author Klezovich Ivan
 * @since 2023-10-04
 */
@Service
@RequiredArgsConstructor
public class PublisherServiceImpl implements PublisherService {

    private final PublisherRepository publisherRepository;
    private final PublisherMapper publisherMapper;

    /**
     * Retrieves all publishers.
     *
     * @return a list of {@link PublisherDto} containing all publishers.
     */
    public ResponseDto<PublisherDto> getAllPublishers() {
        List<PublisherDto> publisherDtoList = new ArrayList<>();

        publisherRepository.findAll().forEach(publisher -> publisherDtoList.add(publisherMapper.toPublisherDto(publisher)));

        return ResponseDto.<PublisherDto>builder()
                .message("ok")
                .data(publisherDtoList)
                .build();
    }

    /**
     * Deletes a publisher.
     *
     * @param publisherDto the publisher data transfer object containing the publisher details to be deleted.
     * @return a {@link ResponseDto} indicating the result of the operation.
     */
    public ResponseDto<PublisherDto> delete(PublisherDto publisherDto) {

        publisherRepository.delete(publisherMapper.toPublisher(publisherDto));

        return ResponseDto.<PublisherDto>builder()
                .message("ОК")
                .build();
    }

    /**
     * Saves a new publisher.
     *
     * @param publisherDto the publisher data transfer object containing the publisher details to be saved.
     * @return a {@link ResponseDto} indicating the result of the operation.
     */
    public ResponseDto<PublisherDto> save(PublisherDto publisherDto) {
        publisherRepository.save(publisherMapper.toPublisher(publisherDto));

        return ResponseDto.<PublisherDto>builder()
                .message("ОК")
                .build();
    }

    /**
     * Updates an existing publisher.
     *
     * @param publisherUpdateDto the update data transfer object containing the old and new publisher details.
     * @return a {@link ResponseDto} indicating the result of the operation.
     */
    public ResponseDto<PublisherDto> update(SimpleDto<PublisherDto> publisherUpdateDto) {

        Publisher publisher = publisherMapper.toPublisher(publisherUpdateDto.getValue());

        publisherRepository.updatePublisherById(publisher.getId(), publisher.getName(), publisher.getAddress());

        return ResponseDto.<PublisherDto>builder()
                .message("ОК")
                .build();
    }
}
