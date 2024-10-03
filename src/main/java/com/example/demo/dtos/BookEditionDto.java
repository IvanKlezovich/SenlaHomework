package com.example.demo.dtos;

import lombok.Builder;

@Builder
public record BookEditionDto(
//        Book book,
        Long year,
        Long price) {
}
