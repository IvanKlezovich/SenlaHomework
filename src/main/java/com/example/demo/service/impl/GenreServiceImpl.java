package com.example.demo.service.impl;

import com.example.demo.dtos.GenreDto;
import com.example.demo.dtos.IdDto;
import com.example.demo.dtos.ResponseDto;
import com.example.demo.dtos.SimpleDto;
import com.example.demo.dtos.create.CreateAuthorDto;
import com.example.demo.dtos.create.CreateGenreDto;
import com.example.demo.entities.Genre;
import com.example.demo.repositories.GenreRepository;
import com.example.demo.service.GenreService;
import com.example.demo.util.GenreMapper;
import com.example.demo.util.create.CreateGenreMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Service implementation for managing {@link GenreDto} entities.
 * This service provides methods for retrieving, creating, updating, and deleting genres.
 *
 * @author Klezovich Ivan
 * @since 2024-10-04
 */
@Service
@RequiredArgsConstructor
public class GenreServiceImpl implements GenreService {

    private final GenreRepository genreRepository;
    private final GenreMapper genreMapper;
    private final CreateGenreMapper createGenreMapper;

    /**
     * Retrieves all genres.
     *
     * @return a list of {@link GenreDto} containing all genres.
     */
    public ResponseDto<GenreDto> getAllGenre() {
        List<GenreDto> genreDtos = new ArrayList<>();

        genreRepository.findAll().forEach(genre -> genreDtos.add(genreMapper.toGenreDto(genre)));

        return ResponseDto.<GenreDto>builder()
                .data(genreDtos)
                .build();
    }

    /**
     * Deletes a genre.
     *
     * @param idDto the genre data transfer object containing the genre details to be deleted.
     * @return a {@link ResponseDto} indicating the result of the operation.
     */
    public ResponseDto<GenreDto> delete(IdDto idDto) {
       genreRepository.deleteById(idDto.id());

        return ResponseDto.<GenreDto>builder()
                .message("ОК")
                .build();
    }

    /**
     * Saves a new genre.
     *
     * @param createGenreDto the genre data transfer object containing the genre details to be saved.
     * @return a {@link ResponseDto} indicating the result of the operation.
     */
    public ResponseDto<GenreDto> save(CreateGenreDto createGenreDto) {
        Genre genre = createGenreMapper.createGenre(createGenreDto.nameGenre());
        genreRepository.save(genre);

        return ResponseDto.<GenreDto>builder()
                .message("ОК")
                .build();
    }

    /**
     * Updates an existing genre.
     *
     * @param genreDto the update data transfer object containing the old and new genre details.
     * @return a {@link ResponseDto} indicating the result of the operation.
     */
    public ResponseDto<GenreDto> update(SimpleDto<CreateGenreDto> genreDto) {

        Genre genre = genreMapper.toGenre(genreDto.getValue());

        genreRepository.updateGenreById(genre.getId(), genre.getNameGenre());

        return ResponseDto.<GenreDto>builder()
                .message("ОК")
                .build();
    }
}
