package com.example.demo.repositories;

import com.example.demo.entities.Orders;

import java.util.List;
import java.util.Optional;

public interface OrdersRepository {
    void save(Orders orders);
    void delete(Orders publisher);
    List<Orders> findAll(); // TODO method must be Optional
    Optional<Orders> findByOrderItemId(Long ordersId);
    void update(Orders newOrders, Orders oldOrders);
}
