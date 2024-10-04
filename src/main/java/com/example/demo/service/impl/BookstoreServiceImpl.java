package com.example.demo.service.impl;

import com.example.demo.dtos.BookstoreDto;
import com.example.demo.dtos.IdDto;
import com.example.demo.dtos.ResponseDto;
import com.example.demo.dtos.SimpleDto;
import com.example.demo.dtos.create.CreateBookstoreDto;
import com.example.demo.entities.Bookstore;
import com.example.demo.repositories.BookstoreRepository;
import com.example.demo.service.BookstoreService;
import com.example.demo.util.BookstoreMapper;
import com.example.demo.util.create.CreateBookstoreMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Service implementation for managing {@link BookstoreDto} entities in the context of a bookstore.
 * This service provides methods for retrieving, creating, updating, and deleting authors.
 *
 * @author Klezovich Ivan
 * @since 2023-10-04
 */
@Service
@RequiredArgsConstructor
public class BookstoreServiceImpl implements BookstoreService {

    private final BookstoreMapper bookstoreMapper;
    private final BookstoreRepository bookstoreRepository;
    private final CreateBookstoreMapper createBookstoreMapper;

    /**
     * Retrieves all authors.
     *
     * @return a list of {@link BookstoreDto} containing all authors.
     */
    public ResponseDto<BookstoreDto> getAllBookstore() {
        List<BookstoreDto> bookstoreDtos = new ArrayList<>();

        bookstoreRepository.findAll().forEach(item ->
                bookstoreDtos.add(bookstoreMapper.toBookstoreDto(item)));

        return ResponseDto.<BookstoreDto>builder()
                .message("ok")
                .data(bookstoreDtos)
                .build();
    }

    public ResponseDto<BookstoreDto> getBookstore(IdDto idDto) {

        BookstoreDto bookstoreDto = bookstoreMapper.toBookstoreDto(bookstoreRepository
                .getBookstoreById(idDto.id())
                .orElseThrow());

        return ResponseDto.<BookstoreDto>builder()
                .message("ok")
                .entity(bookstoreDto)
                .build();
    }

    /**
     * Deletes an author.
     *
     * @param idDto the author data transfer object containing the author details to be deleted.
     * @return a {@link ResponseDto} indicating the result of the operation.
     */
    public ResponseDto<BookstoreDto> delete(IdDto idDto) {

        bookstoreRepository.deleteById(idDto.id());

        return ResponseDto.<BookstoreDto>builder()
                .message("ok")
                .build();
    }

    /**
     * Saves a new author.
     *
     * @param createBookstoreDto the author data transfer object containing the author details to be saved.
     * @return a {@link ResponseDto} indicating the result of the operation.
     */
    public ResponseDto<BookstoreDto> save(CreateBookstoreDto createBookstoreDto) {

        Bookstore bookstore = createBookstoreMapper.createBookstore(
                createBookstoreDto.name(), createBookstoreDto.deliveryDate(), createBookstoreDto.capacity());

        bookstoreRepository.save(bookstore);

        return ResponseDto.<BookstoreDto>builder()
                .message("ok")
                .build();
    }

    /**
     * Updates an existing author.
     *
     * @param bookstoreDto the update data transfer object containing the old and new author details.
     * @return a {@link ResponseDto} indicating the result of the operation.
     */
    public ResponseDto<BookstoreDto> update(SimpleDto<BookstoreDto> bookstoreDto) {

        Bookstore bookstore = bookstoreMapper.toBookstore(bookstoreDto.getValue());
        bookstoreRepository.updateBookstoreById(bookstore.getId(), bookstore.getName(),
                bookstore.getCapacity(), bookstore.getDeliveryDate());

        return ResponseDto.<BookstoreDto>builder()
                .message("ok")
                .build();
    }
}