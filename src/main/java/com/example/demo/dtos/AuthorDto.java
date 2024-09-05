package com.example.demo.dtos;

import lombok.*;

@Builder
public record AuthorDto(
        String fullName,
        String biography,
        Long birthDate,
        String country
) {
}
