package com.example.demo.dtos;

import com.example.demo.entities.Roles;
import lombok.Builder;

@Builder
public record UsersDto(
        String username,
        String password,
        Roles role) {
}
