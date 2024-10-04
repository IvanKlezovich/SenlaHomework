package com.example.demo.dtos;

import lombok.Builder;

import java.util.UUID;

@Builder
public record GenreDto(
        UUID id,
        String nameGenre) {
}
