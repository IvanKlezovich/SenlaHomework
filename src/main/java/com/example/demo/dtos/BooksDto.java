package com.example.demo.dtos;

import lombok.Builder;

import java.util.UUID;

@Builder
public record BooksDto(
        UUID id,
        String title,
        String authorName,
        String genreName
) {
}
