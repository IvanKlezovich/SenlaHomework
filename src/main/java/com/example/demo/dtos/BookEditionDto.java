package com.example.demo.dtos;

import com.example.demo.entities.Books;
import lombok.Builder;

@Builder
public record BookEditionDto(
        Books books,
        Long year,
        Long price) {
}
