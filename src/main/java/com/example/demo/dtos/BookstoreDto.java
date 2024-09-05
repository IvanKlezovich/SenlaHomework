package com.example.demo.dtos;

import lombok.Builder;

@Builder
public record BookstoreDto(
        String name,
        Long deliveryDate,
        int capacity) {
}
