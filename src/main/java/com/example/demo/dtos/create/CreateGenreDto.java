package com.example.demo.dtos.create;

import lombok.Builder;

@Builder
public record CreateGenreDto(
        String nameGenre
) {
}
