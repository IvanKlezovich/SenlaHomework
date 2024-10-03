package com.example.demo.service;

import com.example.demo.dtos.OrdersDto;
import com.example.demo.dtos.ResponseDto;
import com.example.demo.dtos.SimpleDto;

import java.util.List;

public interface OrdersService {
    List<OrdersDto> getAllOrders();
    ResponseDto delete(OrdersDto ordersDto);
    ResponseDto save(OrdersDto ordersDto);
    ResponseDto update(SimpleDto<OrdersDto> ordersDtoUpdateDto);
}
