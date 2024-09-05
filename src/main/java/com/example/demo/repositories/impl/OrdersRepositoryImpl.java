package com.example.demo.repositories.impl;

import com.example.demo.entities.Orders;
import com.example.demo.repositories.OrdersRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Repository
public class OrdersRepositoryImpl implements OrdersRepository {

    private final List<Orders> ordersList = new ArrayList<>();

    public void save(Orders orders) {
        ordersList.add(orders);
    }

    public void delete(Orders publisher) {
        ordersList.remove(publisher);
    }

    public List<Orders> findAll() {
        return ordersList;
    }

    public Optional<Orders> findByOrderItemId(Long ordersId) {
        return ordersList.stream()
                .filter(orders -> orders.getOrderItemId() == ordersId)
                .findFirst();
    }

    public void update(Orders newOrders, Orders oldOrders) {
        int index = ordersList.indexOf(oldOrders);
        if(index != -1) {
            ordersList.set(index, newOrders);
        }
    }
}
