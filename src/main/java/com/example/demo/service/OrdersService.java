package com.example.demo.service;

import com.example.demo.dtos.OrdersDto;
import com.example.demo.dtos.ResponseDto;
import com.example.demo.dtos.UpdateDto;

import java.util.List;

public interface OrdersService {
    List<OrdersDto> getAllOrders();
    ResponseDto delete(OrdersDto ordersDto);
    ResponseDto save(OrdersDto ordersDto);
    ResponseDto update(UpdateDto<OrdersDto> ordersDtoUpdateDto);
}
