package com.example.demo.dtos;

import lombok.*;

@Builder
public record PublisherDto(
        Long id,
        String name,
        String address) {
}
