package com.example.demo.service.impl;

import com.example.demo.dtos.AuthorDto;
import com.example.demo.dtos.ResponceDto;
import com.example.demo.dtos.UpdateDto;
import com.example.demo.entities.Author;
import com.example.demo.repositories.impl.AuthorRepositoryImpl;
import com.example.demo.service.AuthorService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
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

    private final AuthorRepositoryImpl authorRepository;
    private final Random random;

    /**
     * Retrieves all authors.
     *
     * @return a list of {@link AuthorDto} containing all authors.
     */
    public List<AuthorDto> getAllAuthor() {
        List<AuthorDto> authorDtoList = new ArrayList<>();

        authorRepository.findAll().forEach(author -> authorDtoList.add(AuthorDto.builder()
                .fullName(author.getFullName())
                .birthDate(author.getBirthDate())
                .biography(author.getBiography())
                .country(author.getCountry())
                .build()));

        return authorDtoList;
    }

    /**
     * Deletes an author.
     *
     * @param authorDto the author data transfer object containing the author details to be deleted.
     * @return a {@link ResponseDto} indicating the result of the operation.
     */
    public ResponceDto delete(AuthorDto authorDto) {
        Author author = authorRepository.findByName(authorDto.fullName()).orElse(null); //TODO replace with orElseThrow
        authorRepository.delete(author);

        return ResponceDto.builder()
                .message("ОК")
                .build();
    }

    /**
     * Saves a new author.
     *
     * @param authorDto the author data transfer object containing the author details to be saved.
     * @return a {@link ResponseDto} indicating the result of the operation.
     */
    public ResponceDto save(AuthorDto authorDto) {

        Author author = new Author(random.nextLong(), authorDto.fullName(),
                authorDto.biography(), authorDto.birthDate(), authorDto.country());
        authorRepository.save(author);

        return ResponceDto.builder()
                .message("ОК")
                .build();
    }

    /**
     * Updates an existing author.
     *
     * @param authorDto the update data transfer object containing the old and new author details.
     * @return a {@link ResponseDto} indicating the result of the operation.
     */
    public ResponceDto update(UpdateDto<AuthorDto> authorDto) {

        AuthorDto newAuthor = authorDto.getNewValue();
        Author author = authorRepository.findByName(authorDto.getOldValue().fullName()).orElse(null);
        Author updatedAuthor = new Author(author.getId(), newAuthor.fullName(),
                newAuthor.biography(), newAuthor.birthDate(), newAuthor.country());

        authorRepository.update(updatedAuthor, author);
        return ResponceDto.builder()
                .message("ОК")
                .build();
    }
}