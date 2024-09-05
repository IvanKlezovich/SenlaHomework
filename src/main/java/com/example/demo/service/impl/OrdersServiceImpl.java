package com.example.demo.service.impl;

import com.example.demo.dtos.OrdersDto;
import com.example.demo.dtos.ResponceDto;
import com.example.demo.dtos.UpdateDto;
import com.example.demo.entities.Orders;
import com.example.demo.repositories.OrdersRepository;
import com.example.demo.service.OrdersService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 * Service implementation for managing {@link OrdersDto} entities in the context of orders.
 * This service provides methods for retrieving, creating, updating, and deleting authors.
 *
 * @author Klezovich Ivan
 * @since 2023-10-04
 */
@Service
@RequiredArgsConstructor
public class OrdersServiceImpl implements OrdersService {

    private final OrdersRepository ordersRepository;
    private final Random random;

    /**
     * Retrieves all authors.
     *
     * @return a list of {@link OrdersDto} containing all authors.
     */
    public List<OrdersDto> getAllOrders() {
        List<OrdersDto> ordersDtoList = new ArrayList<>();

        ordersRepository.findAll().forEach(orders -> ordersDtoList.add(OrdersDto.builder()
                        .userId(orders.getUserId())
                        .date(orders.getDate())
                        .orderItemId(orders.getOrderItemId())
                        .status(orders.getStatus())
                        .totalPrice(orders.getTotalPrice())
                .build()));

        return ordersDtoList;
    }

    /**
     * Deletes an author.
     *
     * @param ordersDto the author data transfer object containing the author details to be deleted.
     * @return a {@link ResponceDto} indicating the result of the operation.
     */
    public ResponceDto delete(OrdersDto ordersDto) {
        Orders orders = ordersRepository.findByOrderItemId(ordersDto.userId()).orElse(null); //TODO replace with orElseThrow
        ordersRepository.delete(orders);

        return ResponceDto.builder()
                .message("ОК")
                .build();
    }

    /**
     * Saves a new author.
     *
     * @param ordersDto the author data transfer object containing the author details to be saved.
     * @return a {@link ResponceDto} indicating the result of the operation.
     */
    public ResponceDto save(OrdersDto ordersDto) {
        Orders orders = new Orders(random.nextLong(), ordersDto.userId(), ordersDto.orderItemId(),
                ordersDto.totalPrice(), ordersDto.date(), ordersDto.status());
        ordersRepository.save(orders);

        return ResponceDto.builder()
                .message("ОК")
                .build();
    }

    /**
     * Updates an existing author.
     *
     * @param ordersDto the update data transfer object containing the old and new author details.
     * @return a {@link ResponceDto} indicating the result of the operation.
     */
    public ResponceDto update(UpdateDto<OrdersDto> ordersDto) {

        OrdersDto newOrder = ordersDto.getNewValue();
        Orders orders = ordersRepository.findByOrderItemId(ordersDto.getOldValue().orderItemId()).orElse(null);
        Orders updatedOrders = new Orders(orders.getId(), newOrder.userId(), newOrder.orderItemId(),
                newOrder.totalPrice(), newOrder.date(), newOrder.status());

        ordersRepository.update(updatedOrders, orders);
        return ResponceDto.builder()
                .message("ОК")
                .build();
    }
}