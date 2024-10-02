package com.example.demo.dtos;

import lombok.Builder;

@Builder
public record ErrorResponseDTO(
        String uri,
        String type,
        String message,
        Long timestamp
) {

    @Override
    public String toString() {
        return "type = '" + type + "', message = '" + message + "'";
    }
}
