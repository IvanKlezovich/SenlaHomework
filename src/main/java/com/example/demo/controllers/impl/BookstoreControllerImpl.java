package com.example.demo.controllers.impl;

import com.example.demo.controllers.BookstoreController;
import com.example.demo.dtos.BookstoreDto;
import com.example.demo.dtos.IdDto;
import com.example.demo.dtos.ResponseDto;
import com.example.demo.dtos.SimpleDto;
import com.example.demo.dtos.create.CreateBookstoreDto;
import com.example.demo.service.BookstoreService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * REST controller for managing bookstore operations.
 * This controller provides endpoints to retrieve, create, update, and delete bookstore information.
 *
 * @author Klezovich Ivan
 * @since 2024-10-04
 */
@RestController
@RequestMapping("/book")
@RequiredArgsConstructor
public class BookstoreControllerImpl implements BookstoreController {

    private final BookstoreService bookstoreService;

    /**
     * Retrieves all bookstores.
     *
     * @return ResponseEntity containing a ResponseDto with the list of bookstores.
     */
    public ResponseEntity<ResponseDto<BookstoreDto>> getAllBookstore() {
        ResponseDto<BookstoreDto> bookstoreDto = bookstoreService.getAllBookstore();
        return ResponseEntity.ok(bookstoreDto);
    }

    public ResponseEntity<ResponseDto<BookstoreDto>> getBookstore(IdDto idDto){
        ResponseDto<BookstoreDto> bookstore = bookstoreService.getBookstore(idDto);
        return ResponseEntity.ok(bookstore);
    }

    /**
     * Creates a new bookstore.
     *
     * @param createBookstoreDto The DTO containing the details of the bookstore to be created.
     * @return ResponseEntity with HTTP status CREATED if the bookstore is successfully created.
     */
    public ResponseEntity<HttpStatus> createBookstore(CreateBookstoreDto createBookstoreDto) {
        bookstoreService.save(createBookstoreDto);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }

    /**
     * Updates an existing bookstore.
     *
     * @param bookstoreDtoUpdateDto The DTO containing the updated details of the bookstore.
     * @return ResponseEntity with HTTP status OK if the bookstore is successfully updated.
     */
    public ResponseEntity<HttpStatus> updateBookstore(SimpleDto<BookstoreDto> bookstoreDtoUpdateDto) {
        bookstoreService.update(bookstoreDtoUpdateDto);
        return ResponseEntity.status(HttpStatus.OK).build();
    }

    /**
     * Deletes a bookstore.
     *
     * @param idDto The DTO containing the details of the bookstore to be deleted.
     * @return ResponseEntity with HTTP status NO_CONTENT if the bookstore is successfully deleted.
     */
    public ResponseEntity<HttpStatus> deleteBookstore(IdDto idDto) {
        bookstoreService.delete(idDto);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }
}
