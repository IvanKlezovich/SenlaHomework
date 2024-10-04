package com.example.demo.dtos;

import lombok.Builder;

import java.util.UUID;

@Builder
public record BookEditionDto(
        UUID id,
//        Book book,
        Long year,
        Long price
) {
}
