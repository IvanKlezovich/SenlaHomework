package com.example.demo.dtos;

import lombok.Builder;

@Builder
public record GenreDto(
        Long id,
        String nameGenre) {
}
