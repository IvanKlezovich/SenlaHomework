package com.example.demo.service.impl;

import com.example.demo.dtos.AuthorDto;
import com.example.demo.dtos.ResponseDto;
import com.example.demo.dtos.UpdateDto;
import com.example.demo.entities.Author;
import com.example.demo.repositories.AuthorRepository;
import com.example.demo.service.AuthorService;
import com.example.demo.util.AuthorMapper;
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

    /**
     * Retrieves all authors.
     *
     * @return a list of {@link AuthorDto} containing all authors.
     */
    public List<AuthorDto> getAllAuthor() {
        List<AuthorDto> authorDtos = new ArrayList<>();
        authorRepository.findAll().forEach(item -> authorDtos.add(authorMapper.toAuthorDto(item)));
        return authorDtos;
    }

    /**
     * Deletes an author.
     *
     * @param authorDto the author data transfer object containing the author details to be deleted.
     * @return a {@link ResponseDto} indicating the result of the operation.
     */
    @Transactional
    public ResponseDto delete(AuthorDto authorDto) {
        Author author = authorRepository.findAuthorByFullName(
                authorDto.fullName()).orElseThrow();

        if (Boolean.TRUE.equals(author.getIsAlive())) authorRepository.deleteAuthorById(author.getId());
        else throw new RuntimeException();

        return ResponseDto.builder()
                .message("ОК")
                .build();
    }

    /**
     * Saves a new author.
     *
     * @param authorDto the author data transfer object containing the author details to be saved.
     * @return a {@link ResponseDto} indicating the result of the operation.
     */
    public ResponseDto save(AuthorDto authorDto) {

        authorRepository.save(authorMapper.toAuthor(authorDto));

        return ResponseDto.builder()
                .message("ОК")
                .build();
    }

    /**
     * Updates an existing author.
     *
     * @param authorDto the update data transfer object containing the old and new author details.
     * @return a {@link ResponseDto} indicating the result of the operation.
     */
    public ResponseDto update(UpdateDto<AuthorDto> authorDto) {

        Author author = authorRepository.findAuthorByFullName(authorDto.getOldValue().fullName())
                .orElseThrow(null);

        AuthorDto newAuthor = authorDto.getNewValue();

        authorRepository.updateAuthorById(author.getId(), newAuthor.fullName(),
                newAuthor.birthDate(), newAuthor.country());

        return ResponseDto.builder()
                .message("ОК")
                .build();
    }
}