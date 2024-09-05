package com.example.demo.service;

import com.example.demo.dtos.OrdersDto;
import com.example.demo.dtos.ResponceDto;
import com.example.demo.dtos.UpdateDto;

import java.util.List;

public interface OrdersService {
    List<OrdersDto> getAllOrders();
    ResponceDto delete(OrdersDto ordersDto);
    ResponceDto save(OrdersDto ordersDto);
    ResponceDto update(UpdateDto<OrdersDto> ordersDtoUpdateDto);
}
