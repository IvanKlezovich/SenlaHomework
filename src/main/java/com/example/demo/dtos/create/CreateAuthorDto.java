package com.example.demo.dtos.create;

import lombok.Builder;

@Builder
public record CreateAuthorDto(
        String fullName,
        String biography,
        Long birthDate,
        String country
) {
}
