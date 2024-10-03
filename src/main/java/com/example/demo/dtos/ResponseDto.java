package com.example.demo.dtos;

import lombok.Builder;

import java.util.List;

@Builder
public record ResponseDto<T>(
    String message,
    List<T> data) {
}
