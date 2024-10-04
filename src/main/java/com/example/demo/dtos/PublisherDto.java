package com.example.demo.dtos;

import lombok.*;

import java.util.UUID;

@Builder
public record PublisherDto(
        UUID id,
        String name,
        String address) {
}
