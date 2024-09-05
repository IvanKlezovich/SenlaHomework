package com.example.demo.repositories.impl;

import com.example.demo.entities.BookEdition;
import com.example.demo.entities.OrderItems;
import com.example.demo.repositories.OrderItemsRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Repository
public class OrderItemsRepositoryImpl implements OrderItemsRepository {

    private final List<OrderItems> orderItemsList = new ArrayList<>();

    public void save(OrderItems orderItems){
        orderItemsList.add(orderItems);
    }

    public void delete(OrderItems orderItems){
        orderItemsList.remove(orderItems);
    }

    public List<OrderItems> findAll(){
        return orderItemsList;
    }

    public Optional<OrderItems> findByName(List<BookEdition> bookEditions){
        return orderItemsList.stream()
                .filter(orderItems -> bookEditions.equals(orderItems.getBookEditions()))
                .findFirst();
    }

    public void update(OrderItems oldOrderItems, OrderItems newOrderItems){
        int index = orderItemsList.indexOf(oldOrderItems);
        if(index != -1) {
            orderItemsList.set(index, newOrderItems);
        }
    }
}
