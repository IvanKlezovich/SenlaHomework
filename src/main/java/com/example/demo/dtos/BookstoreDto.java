package com.example.demo.dtos;

import lombok.Builder;

import java.util.UUID;

@Builder
public record BookstoreDto(
        UUID id,
        String name,
        Long deliveryDate,
        int capacity
) {
}
