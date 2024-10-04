package com.example.demo.dtos.create;

public record CreateBookstoreDto(
        String name,
        Long deliveryDate,
        int capacity
) {
}
