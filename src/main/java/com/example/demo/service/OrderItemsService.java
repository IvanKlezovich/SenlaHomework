package com.example.demo.service;

import com.example.demo.dtos.AuthorDto;
import com.example.demo.dtos.OrderItemsDto;
import com.example.demo.dtos.ResponceDto;
import com.example.demo.dtos.UpdateDto;

import java.util.List;

public interface OrderItemsService {

    List<OrderItemsDto> getAllOrderItems();

    ResponceDto delete(OrderItemsDto authorDto);

    ResponceDto save(OrderItemsDto authorDto);

    ResponceDto update(UpdateDto<OrderItemsDto> authorDto);
}
