//package com.example.demo.controllers.impl;
//
//import com.example.demo.controllers.BookEditionController;
//import com.example.demo.dtos.BookEditionDto;
//import com.example.demo.dtos.BooksDto;
//import com.example.demo.dtos.UpdateDto;
//import com.example.demo.service.BookEditionService;
//import lombok.AllArgsConstructor;
//import org.springframework.http.HttpStatus;
//import org.springframework.http.ResponseEntity;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController;
//
//import java.util.List;
//
//@RestController
//@RequestMapping("/book")
//@AllArgsConstructor
//public class BookEditionControllerImpl implements BookEditionController {
//
//    private BookEditionService bookEditionService;
//
//    public ResponseEntity<List<BookEditionDto>> getBookEdition() {
//        List<BookEditionDto> bookEdition = bookEditionService.getAllBooks();
//        return (bookEdition.isEmpty()) ? ResponseEntity.noContent().build() : ResponseEntity.ok(bookEdition);
//    }
//
//    @Override
//    public ResponseEntity<HttpStatus> createBookEdition(BookEditionDto bookEdition) {
//        bookEditionService.save(bookEdition);
//        return ResponseEntity.status(HttpStatus.CREATED).build();
//    }
//
//    @Override
//    public ResponseEntity<HttpStatus> updateBookEdition(UpdateDto<BookEditionDto> bookEdition) {
//        bookEditionService.update(bookEdition);
//        return ResponseEntity.status(HttpStatus.OK).build();
//    }
//
//    @Override
//    public ResponseEntity<HttpStatus> deleteBookEdition(BookEditionDto bookEdition) {
//        bookEditionService.delete(bookEdition);
//        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
//    }
//}
