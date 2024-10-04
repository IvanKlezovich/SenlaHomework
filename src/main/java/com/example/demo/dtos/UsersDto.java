package com.example.demo.dtos;

import com.example.demo.entities.enums.Roles;
import lombok.Builder;

import java.util.UUID;

@Builder
public record UsersDto(
        UUID id,
        String username,
        String password,
        Roles role) {
}
