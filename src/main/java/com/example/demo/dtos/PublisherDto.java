package com.example.demo.dtos;

import lombok.*;

@Builder
public record PublisherDto(
        String name,
        String address) {
}
