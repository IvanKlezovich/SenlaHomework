//package com.example.demo.service.impl;
//
//import com.example.demo.dtos.PublisherDto;
//import com.example.demo.dtos.ResponseDto;
//import com.example.demo.dtos.UpdateDto;
//import com.example.demo.entities.Publisher;
//import com.example.demo.repositories.PublisherRepository;
//import com.example.demo.service.PublisherService;
//import lombok.RequiredArgsConstructor;
//import org.springframework.stereotype.Service;
//
//import java.util.ArrayList;
//import java.util.List;
//import java.util.Random;
//
///**
// * Service implementation for managing {@link PublisherDto} entities.
// * This service provides methods for retrieving, creating, updating, and deleting publishers.
// *
// * @author Klezovich Ivan
// * @since 2023-10-04
// */
//@Service
//@RequiredArgsConstructor
//public class PublisherServiceImpl implements PublisherService {
//
//    private final PublisherRepository publisherRepository;
//    private final Random random;
//
//    /**
//     * Retrieves all publishers.
//     *
//     * @return a list of {@link PublisherDto} containing all publishers.
//     */
//    public List<PublisherDto> getAllPublishers() {
//        List<PublisherDto> publisherDtoList = new ArrayList<>();
//
//        publisherRepository.findAll().forEach(publisher -> publisherDtoList.add(PublisherDto.builder()
//                .name(publisher.getName())
//                .address(publisher.getAddress())
//                .build()));
//
//        return publisherDtoList;
//    }
//
//    /**
//     * Deletes a publisher.
//     *
//     * @param publisherDto the publisher data transfer object containing the publisher details to be deleted.
//     * @return a {@link ResponseDto} indicating the result of the operation.
//     */
//    public ResponseDto delete(PublisherDto publisherDto) {
//        Publisher publisher = publisherRepository.findByName(publisherDto.name()).orElse(null); //TODO replace with orElseThrow
//        publisherRepository.delete(publisher);
//
//        return ResponseDto.builder()
//                .message("ОК")
//                .build();
//    }
//
//    /**
//     * Saves a new publisher.
//     *
//     * @param publisherDto the publisher data transfer object containing the publisher details to be saved.
//     * @return a {@link ResponseDto} indicating the result of the operation.
//     */
//    public ResponseDto save(PublisherDto publisherDto) {
//        Publisher publisher = new Publisher(random.nextLong(), publisherDto.name(), publisherDto.address());
//        publisherRepository.save(publisher);
//
//        return ResponseDto.builder()
//                .message("ОК")
//                .build();
//    }
//
//    /**
//     * Updates an existing publisher.
//     *
//     * @param publisherUpdateDto the update data transfer object containing the old and new publisher details.
//     * @return a {@link ResponseDto} indicating the result of the operation.
//     */
//    public ResponseDto update(UpdateDto<PublisherDto> publisherUpdateDto) {
//        PublisherDto newPublisher = publisherUpdateDto.getNewValue();
//        Publisher publisher = publisherRepository.findByName(publisherUpdateDto.getOldValue().name()).orElse(null);
//        Publisher updatedPublisher = new Publisher(publisher.getId(), newPublisher.name(), newPublisher.address());
//
//        publisherRepository.update(updatedPublisher, publisher);
//        return ResponseDto.builder()
//                .message("ОК")
//                .build();
//    }
//}
