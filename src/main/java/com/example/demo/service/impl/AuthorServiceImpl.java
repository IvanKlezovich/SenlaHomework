package com.example.demo.service.impl;

import com.example.demo.dtos.AuthorDto;
import com.example.demo.dtos.ResponseDto;
import com.example.demo.dtos.SimpleDto;
import com.example.demo.entities.Author;
import com.example.demo.repositories.AuthorRepository;
import com.example.demo.service.AuthorService;
import com.example.demo.util.AuthorMapper;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.Random;

/**
 * Service implementation for managing {@link AuthorDto} entities.
 * This service provides methods for retrieving, creating, updating, and deleting authors.
 *
 * @author Klezovich Ivan
 * @since 2023-10-04
 */
@Service
@RequiredArgsConstructor
public class AuthorServiceImpl implements AuthorService {

    private final AuthorRepository authorRepository;
    private final AuthorMapper authorMapper;

    /**
     * Retrieves all authors.
     *
     * @return a list of {@link AuthorDto} containing all authors.
     */
    public ResponseDto<AuthorDto> getAllAuthor() {
        List<AuthorDto> authorDtos = new ArrayList<>();
        authorRepository.findAll().forEach(item -> authorDtos.add(authorMapper.toAuthorDto(item)));
        return ResponseDto.<AuthorDto>builder()
                .message("ok")
                .data(authorDtos)
                .build();
    }

    @Transactional
    public ResponseDto<AuthorDto> getAuthor(Long id) {
        return null;
    }

    /**
     * Deletes an author.
     *
     * @param authorDto the author data transfer object containing the author details to be deleted.
     * @return a {@link ResponseDto} indicating the result of the operation.
     */
    @Transactional
    public ResponseDto<AuthorDto> delete(AuthorDto authorDto) {

        authorRepository.delete(authorMapper.toAuthor(authorDto));

        return ResponseDto.<AuthorDto>builder()
                .message("ОК")
                .build();
    }

    /**
     * Saves a new author.
     *
     * @param authorDto the author data transfer object containing the author details to be saved.
     * @return a {@link ResponseDto} indicating the result of the operation.
     */
    public ResponseDto<AuthorDto> save(AuthorDto authorDto) {

        System.out.println(authorDto.toString());
        Author author = authorMapper.toAuthor(authorDto);
        System.out.println(author.toString());

        authorRepository.save(authorMapper.toAuthor(authorDto));

        return ResponseDto.<AuthorDto>builder()
                .message("ОК")
                .build();
    }

    /**
     * Updates an existing author.
     *
     * @param authorDto the update data transfer object containing the old and new author details.
     * @return a {@link ResponseDto} indicating the result of the operation.
     */
    public ResponseDto<AuthorDto> update(SimpleDto<AuthorDto> authorDto) {

        Author author = authorMapper.toAuthor(authorDto.getValue());

        authorRepository.updateAuthorById(author.getId(), author.getFullName(),
                author.getBirthDate(), author.getCountry());

        return ResponseDto.<AuthorDto>builder()
                .message("ОК")
                .build();
    }
}