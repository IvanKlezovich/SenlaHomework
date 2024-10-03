package com.example.demo.controllers.impl;

import com.example.demo.controllers.BookstoreController;
import com.example.demo.dtos.BookstoreDto;
import com.example.demo.dtos.ResponseDto;
import com.example.demo.dtos.SimpleDto;
import com.example.demo.service.BookstoreService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/book")
@RequiredArgsConstructor
public class BookstoreControllerImpl implements BookstoreController {

    private final BookstoreService bookstoreService;

    public ResponseEntity<ResponseDto<BookstoreDto>> getBookstore() {
        return ResponseEntity.ok().body(bookstoreService.getAllBookstore());
    }

    @Override
    public ResponseEntity<HttpStatus> createBookstore(BookstoreDto bookstoreDto) {
        bookstoreService.save(bookstoreDto);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }

    @Override
    public ResponseEntity<HttpStatus> updateBookstore(SimpleDto<BookstoreDto> bookstoreDtoUpdateDto) {
        bookstoreService.update(bookstoreDtoUpdateDto);
        return ResponseEntity.status(HttpStatus.OK).build();
    }

    @Override
    public ResponseEntity<HttpStatus> deleteBookstore(BookstoreDto bookstoreDto) {
        bookstoreService.delete(bookstoreDto);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }
}
