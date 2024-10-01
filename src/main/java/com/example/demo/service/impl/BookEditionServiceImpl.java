//package com.example.demo.service.impl;
//
//import com.example.demo.dtos.BookEditionDto;
//import com.example.demo.dtos.ResponseDto;
//import com.example.demo.dtos.UpdateDto;
//import com.example.demo.entities.BookEdition;
//import com.example.demo.repositories.BookEditionRepository;
//import com.example.demo.service.BookEditionService;
//import lombok.RequiredArgsConstructor;
//import org.springframework.stereotype.Service;
//
//import java.util.ArrayList;
//import java.util.List;
//import java.util.Random;
//
///**
// * Service implementation for managing {@link BookEditionDto} entities.
// * This service provides methods for retrieving, creating, updating, and deleting book editions.
// *
// * @author Klezovich Ivan
// * @since 2023-10-04
// */
//@Service
//@RequiredArgsConstructor
//public class BookEditionServiceImpl implements BookEditionService {
//
//    private final BookEditionRepository bookEditionRepository;
//    private final Random random;
//
//    /**
//     * Retrieves all book editions.
//     *
//     * @return a list of {@link BookEditionDto} containing all book editions.
//     */
//    public List<BookEditionDto> getAllBookEdition() {
//        List<BookEditionDto> bookEditionDtos = new ArrayList<>();
//
//        bookEditionRepository.findAll().forEach(bookEdition -> bookEditionDtos.add(BookEditionDto.builder()
//                .books(bookEdition.getBooks())
//                .price(bookEdition.getPrice())
//                .year(bookEdition.getYear())
//                .build()));
//
//        return bookEditionDtos;
//    }
//
//    /**
//     * Deletes a book edition.
//     *
//     * @param bookEditionDto the book edition data transfer object containing the book edition details to be deleted.
//     * @return a {@link ResponseDto} indicating the result of the operation.
//     */
//    public ResponseDto delete(BookEditionDto bookEditionDto) {
//        BookEdition bookEdition = bookEditionRepository.findByBookTitle(bookEditionDto.books().getTitle()).orElse(null); //TODO replace with orElseThrow
//        bookEditionRepository.delete(bookEdition);
//
//        return ResponseDto.builder()
//                .message("ОК")
//                .build();
//    }
//
//    /**
//     * Saves a new book edition.
//     *
//     * @param bookEditionDto the book edition data transfer object containing the book edition details to be saved.
//     * @return a {@link ResponseDto} indicating the result of the operation.
//     */
//    public ResponseDto save(BookEditionDto bookEditionDto) {
//        BookEdition bookEdition = new BookEdition(random.nextLong(), bookEditionDto.books(), bookEditionDto.year(), bookEditionDto.price());
//        bookEditionRepository.save(bookEdition);
//
//        return ResponseDto.builder()
//                .message("ОК")
//                .build();
//    }
//
//    /**
//     * Updates an existing book edition.
//     *
//     * @param bookEditionDtoUpdateDto the update data transfer object containing the old and new book edition details.
//     * @return a {@link ResponseDto} indicating the result of the operation.
//     */
//    public ResponseDto update(UpdateDto<BookEditionDto> bookEditionDtoUpdateDto) {
//
//        BookEditionDto newBookEditionDtoUpdateDto = bookEditionDtoUpdateDto.getNewValue();
//        BookEdition bookEdition = bookEditionRepository.findByBookTitle(
//                bookEditionDtoUpdateDto.getOldValue().books().getTitle()).orElse(null);
//        BookEdition updatedBookEdition = new BookEdition(bookEdition.getId(), newBookEditionDtoUpdateDto.books(),
//                newBookEditionDtoUpdateDto.year(), newBookEditionDtoUpdateDto.price());
//
//        bookEditionRepository.update(updatedBookEdition, bookEdition);
//        return ResponseDto.builder()
//                .message("ОК")
//                .build();
//    }
//}
