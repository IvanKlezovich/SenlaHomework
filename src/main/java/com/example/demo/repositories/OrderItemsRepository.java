package com.example.demo.repositories;

import com.example.demo.entities.BookEdition;
import com.example.demo.entities.OrderItems;

import java.util.List;
import java.util.Optional;

public interface OrderItemsRepository {
    
    void save(OrderItems orderItems);

    void delete(OrderItems orderItems);

    List<OrderItems> findAll(); // TODO method must be Optional

    Optional<OrderItems> findByName(List<BookEdition> bookEditions);

    void update(OrderItems oldOrderItems, OrderItems newOrderItems);
}
