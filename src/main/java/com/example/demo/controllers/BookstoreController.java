package com.example.demo.controllers;

import com.example.demo.dtos.BookstoreDto;
import com.example.demo.dtos.ResponseDto;
import com.example.demo.dtos.SimpleDto;
import io.swagger.v3.oas.annotations.Operation;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

public interface BookstoreController {

    @Operation(
            summary = "Информация о магазинах",
            description = "Полная информация о всех магазинах"
    )
    @GetMapping("/allBookstore")
    ResponseEntity<ResponseDto<BookstoreDto>> getBookstore();

    @Operation(
            summary = "Добавление магазина",
            description = "Добавление магазина надо производить при открытии"
    )
    @PostMapping("/Bookstore")
    ResponseEntity<HttpStatus> createBookstore(@RequestBody BookstoreDto bookstore);

    @Operation(
            summary = "Изменение данных о магазинах",
            description = "Изменение надо проводит когда поменялась информация о магазине"
    )
    @PostMapping("/BookstoreUpdate")
    ResponseEntity<HttpStatus> updateBookstore(@RequestBody SimpleDto<BookstoreDto> bookstore);

    @Operation(
            summary = "Удаление данных о магазинах",
            description = "Удаление надо производить если по адресу нет магазина"
    )
    @PostMapping("/BookstoreDelete")
    ResponseEntity<HttpStatus> deleteBookstore(@RequestBody BookstoreDto bookstore);
}
