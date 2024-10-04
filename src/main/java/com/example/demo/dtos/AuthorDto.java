package com.example.demo.dtos;

import java.util.UUID;

public record AuthorDto (
        UUID id,
        String fullName,
        String biography,
        Long birthDate,
        String country) {
}
