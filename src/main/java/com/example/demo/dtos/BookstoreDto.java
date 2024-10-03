package com.example.demo.dtos;

import lombok.Builder;

@Builder
public record BookstoreDto(
        Long id,
        String name,
        Long deliveryDate,
        int capacity) {
}
