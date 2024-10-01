package com.example.demo.service;

import com.example.demo.dtos.OrderItemsDto;
import com.example.demo.dtos.ResponseDto;
import com.example.demo.dtos.UpdateDto;

import java.util.List;

public interface OrderItemsService {

    List<OrderItemsDto> getAllOrderItems();

    ResponseDto delete(OrderItemsDto authorDto);

    ResponseDto save(OrderItemsDto authorDto);

    ResponseDto update(UpdateDto<OrderItemsDto> authorDto);
}
