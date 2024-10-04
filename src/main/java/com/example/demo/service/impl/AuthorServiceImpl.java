package com.example.demo.service.impl;

import com.example.demo.dtos.*;
import com.example.demo.dtos.create.CreateAuthorDto;
import com.example.demo.entities.Author;
import com.example.demo.repositories.AuthorRepository;
import com.example.demo.service.AuthorService;
import com.example.demo.util.AuthorMapper;
import com.example.demo.util.create.CreateAuthorMapper;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

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
    private final CreateAuthorMapper createAuthorMapper;

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
    public ResponseDto<AuthorDto> getAuthor(IdDto idDto) {
        return null;
    }

    /**
     * Deletes an author.
     *
     * @param idDto the author data transfer object containing the author details to be deleted.
     * @return a {@link ResponseDto} indicating the result of the operation.
     */
    @Transactional
    public ResponseDto<AuthorDto> delete(IdDto idDto) {

        authorRepository.deleteById(idDto.id());

        return ResponseDto.<AuthorDto>builder()
                .message("ОК")
                .build();
    }

    /**
     * Saves a new author.
     *
     * @param createAuthorDto the author data transfer object containing the author details to be saved.
     * @return a {@link ResponseDto} indicating the result of the operation.
     */
    public ResponseDto<AuthorDto> save(CreateAuthorDto createAuthorDto) {

        Author author = createAuthorMapper.createAuthor(createAuthorDto.fullName(), createAuthorDto.biography(),
                createAuthorDto.birthDate(), createAuthorDto.country());
        authorRepository.save(author);

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