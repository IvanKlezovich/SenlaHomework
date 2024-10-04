package com.example.demo.dtos;

import com.example.demo.entities.enums.Status;
import lombok.*;

import java.util.UUID;

@Builder
public record OrdersDto(
        UUID id,
        UUID userId,
//        List<OrderItems> orderItems,
        Long totalPrice,
        Long date,
        Status status) {
}
