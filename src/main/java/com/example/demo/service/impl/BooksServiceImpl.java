//package com.example.demo.service.impl;
//
//import com.example.demo.dtos.BooksDto;
//import com.example.demo.dtos.ResponseDto;
//import com.example.demo.dtos.SimpleDto;
//import com.example.demo.entities.Author;
//import com.example.demo.entities.Books;
//import com.example.demo.entities.Genre;
//import com.example.demo.repositories.AuthorRepository;
//import com.example.demo.repositories.GenreRepository;
//import com.example.demo.repositories.BooksRepository;
//import com.example.demo.service.BooksService;
//import lombok.AllArgsConstructor;
//import org.springframework.stereotype.Service;
//
//import java.util.ArrayList;
//import java.util.List;
//import java.util.Random;
//
///**
// * Service implementation for managing {@link BooksDto} entities.
// * This service provides methods for retrieving, creating, updating, and deleting books.
// *
// * @author Klezovich Ivan
// * @since 2023-10-04
// */
//@Service
//@AllArgsConstructor
//public class BooksServiceImpl implements BooksService {
//
//    private BooksRepository booksRepository;
//    private AuthorRepository authorRepository;
//    private GenreRepository genreRepository;
//    private Random random;
//
//    /**
//     * Retrieves all books.
//     *
//     * @return a list of {@link BooksDto} containing all books.
//     */
//    public List<BooksDto> getAllBooks() {
//        List<BooksDto> booksDtoList = new ArrayList<>();
//
//        booksRepository.findAll().forEach(books -> booksDtoList.add(new BooksDto(books.getTitle(),
//                books.getAuthor().getFullName(), books.getGenre().getNameGenre())));
//
//        return booksDtoList;
//    }
//
//    /**
//     * Deletes a book.
//     *
//     * @param booksDto the book data transfer object containing the book details to be deleted.
//     * @return a {@link ResponseDto} indicating the result of the operation.
//     */
//    public ResponseDto delete(BooksDto booksDto) {
//        Books book = booksRepository.findByTitle(booksDto.getTitle()).orElse(null); //TODO replace with orElseThrow
//        booksRepository.delete(book);
//
//        return ResponseDto.builder()
//                .message("ОК")
//                .build();
//    }
//
//    /**
//     * Saves a new book.
//     *
//     * @param booksDto the book data transfer object containing the book details to be saved.
//     * @return a {@link ResponseDto} indicating the result of the operation.
//     */
//    public ResponseDto save(BooksDto booksDto) {
//
//        Author author = authorRepository.findByName(booksDto.getAuthorName()).orElse(null);
//        Genre genre = genreRepository.findByName(booksDto.getGenreName()).orElse(null);
//        Books book = new Books(random.nextLong(), booksDto.getTitle(), author, genre);
//        booksRepository.save(book);
//
//        return ResponseDto.builder()
//                .message("ОК")
//                .build();
//    }
//
//    /**
//     * Updates an existing book.
//     *
//     * @param booksDto the update data transfer object containing the old and new book details.
//     * @return a {@link ResponseDto} indicating the result of the operation.
//     */
//    public ResponseDto update(UpdateDto<BooksDto> booksDto) {
//
//        Genre genre = genreRepository.findByName(booksDto.getOldValue().getGenreName()).orElse(null); // TODO: replace with orElseThrow
//        Author author = authorRepository.findByName(booksDto.getOldValue().getAuthorName()).orElse(null); // TODO: replace with orElseThrow
//        Books book = booksRepository.findByTitle(booksDto.getOldValue().getTitle()).orElse(null); // TODO: replace with orElseThrow
//        Books updatedBook = new Books(book.getId(), booksDto.getNewValue().getTitle(), author, genre);
//
//        booksRepository.update(updatedBook, book);
//        return ResponseDto.builder()
//                .message("ОК")
//                .build();
//    }
//}