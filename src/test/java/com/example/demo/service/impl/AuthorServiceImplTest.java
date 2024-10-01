package com.example.demo.service.impl;

import com.example.demo.dtos.AuthorDto;
import com.example.demo.entities.Author;
import com.example.demo.repositories.AuthorRepository;
import com.example.demo.service.AuthorService;
import com.example.demo.util.AuthorMapper;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;
import static org.postgresql.hostchooser.HostRequirement.any;

class AuthorServiceImplTest {

    @Mock
    private AuthorRepository authorRepository;

    @Mock
    private AuthorMapper authorMapper;

    @InjectMocks
    private AuthorService authorServiceImpl;

    @Test
    @DisplayName("Get all authors successful")
    void getAllAuthorWith() {
        List<Author> fullList = new ArrayList<>(List.of(new Author(1L, "Omar Hay-am", "", 1L, "Turkey", false)));

        List<AuthorDto> answer = new ArrayList<>(List.of(new AuthorDto("Omar Hay-am", "", 1L, "Turkey")));

        when(authorRepository.findAll()).thenReturn(fullList);
        when(authorMapper.toAuthorDto(any(Author.class))).thenReturn(AuthorDto.builder()
                        .fullName("Omar Hay-am")
                        .biography("")
                        .birthDate(1L)
                        .country("Turkey")
                        .build());

        List<AuthorDto> method = authorServiceImpl.getAllAuthor();

        assertEquals(method, answer);
        verify(authorRepository, times(1)).findAll();
        verify(authorMapper, times(1)).toAuthorDto(any(Author.class));
    }

    @Test
    void delete() {
    }

    @Test
    void save() {
    }

    @Test
    void update() {
    }
}