//package com.example.demo.service.impl;
//
//import com.example.demo.dtos.AuthorDto;
//import com.example.demo.dtos.ResponseDto;
//import com.example.demo.dtos.UpdateDto;
//import com.example.demo.service.BookstoreService;
//import lombok.RequiredArgsConstructor;
//import org.springframework.stereotype.Service;
//
//import java.util.List;
//
///**
// * Service implementation for managing {@link AuthorDto} entities in the context of a bookstore.
// * This service provides methods for retrieving, creating, updating, and deleting authors.
// *
// * @author Klezovich Ivan
// * @since 2023-10-04
// */
//@Service
//@RequiredArgsConstructor
//public class BookstoreServiceImpl implements BookstoreService {
//
//    /**
//     * Retrieves all authors.
//     *
//     * @return a list of {@link AuthorDto} containing all authors.
//     */
//    @Override
//    public List<AuthorDto> getAllAuthor() {
//        return List.of();
//    }
//
//    /**
//     * Deletes an author.
//     *
//     * @param authorDto the author data transfer object containing the author details to be deleted.
//     * @return a {@link ResponseDto} indicating the result of the operation.
//     */
//    @Override
//    public ResponseDto delete(AuthorDto authorDto) {
//        return null;
//    }
//
//    /**
//     * Saves a new author.
//     *
//     * @param authorDto the author data transfer object containing the author details to be saved.
//     * @return a {@link ResponseDto} indicating the result of the operation.
//     */
//    @Override
//    public ResponseDto save(AuthorDto authorDto) {
//        return null;
//    }
//
//    /**
//     * Updates an existing author.
//     *
//     * @param authorDto the update data transfer object containing the old and new author details.
//     * @return a {@link ResponseDto} indicating the result of the operation.
//     */
//    @Override
//    public ResponseDto update(UpdateDto<AuthorDto> authorDto) {
//        return null;
//    }
//}