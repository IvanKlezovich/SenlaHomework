//package com.example.demo.service.impl;
//
//import com.example.demo.dtos.GenreDto;
//import com.example.demo.dtos.ResponseDto;
//import com.example.demo.dtos.UpdateDto;
//import com.example.demo.entities.Genre;
//import com.example.demo.repositories.GenreRepository;
//import com.example.demo.service.GenreService;
//import lombok.RequiredArgsConstructor;
//import org.springframework.stereotype.Service;
//
//import java.util.ArrayList;
//import java.util.List;
//import java.util.Random;
//
///**
// * Service implementation for managing {@link GenreDto} entities.
// * This service provides methods for retrieving, creating, updating, and deleting genres.
// *
// * @author Klezovich Ivan
// * @since 2023-10-04
// */
//@Service
//@RequiredArgsConstructor
//public class GenreServiceImpl implements GenreService {
//
//    private final GenreRepository genreRepository;
//    private final Random random;
//
//    /**
//     * Retrieves all genres.
//     *
//     * @return a list of {@link GenreDto} containing all genres.
//     */
//    public List<GenreDto> getAllGenre() {
//        List<GenreDto> genreDtoList = new ArrayList<>();
//
//        genreRepository.findAll().forEach(genre -> genreDtoList.add(GenreDto.builder()
//                .nameGenre(genre.getNameGenre())
//                .build()));
//
//        return genreDtoList;
//    }
//
//    /**
//     * Deletes a genre.
//     *
//     * @param genreDto the genre data transfer object containing the genre details to be deleted.
//     * @return a {@link ResponseDto} indicating the result of the operation.
//     */
//    public ResponseDto delete(GenreDto genreDto) {
//        Genre genre = genreRepository.findByName(genreDto.nameGenre()).orElse(null); //TODO replace with orElseThrow
//        genreRepository.delete(genre);
//
//        return ResponseDto.builder()
//                .message("ОК")
//                .build();
//    }
//
//    /**
//     * Saves a new genre.
//     *
//     * @param genreDto the genre data transfer object containing the genre details to be saved.
//     * @return a {@link ResponseDto} indicating the result of the operation.
//     */
//    public ResponseDto save(GenreDto genreDto) {
//        Genre genre = new Genre(random.nextLong(), genreDto.nameGenre());
//        genreRepository.save(genre);
//
//        return ResponseDto.builder()
//                .message("ОК")
//                .build();
//    }
//
//    /**
//     * Updates an existing genre.
//     *
//     * @param genreDto the update data transfer object containing the old and new genre details.
//     * @return a {@link ResponseDto} indicating the result of the operation.
//     */
//    public ResponseDto update(UpdateDto<GenreDto> genreDto) {
//        Genre genre = genreRepository.findByName(genreDto.getOldValue().nameGenre()).orElse(null); // TODO: replace with orElseThrow
//        Genre updatedGenre = new Genre(genre.getId(), genreDto.getNewValue().nameGenre());
//
//        genreRepository.update(genre, updatedGenre);
//        return ResponseDto.builder()
//                .message("ОК")
//                .build();
//    }
//}
