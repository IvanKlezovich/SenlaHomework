package com.example.demo.dtos;

import com.example.demo.entities.Status;
import lombok.*;

@Builder
public record OrdersDto(
        Long userId,
        Long orderItemId,
        Long totalPrice,
        Long date,
        Status status) {
}
