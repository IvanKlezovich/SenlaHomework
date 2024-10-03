package com.example.demo.controllers;


import com.example.demo.dtos.OrdersDto;
import com.example.demo.dtos.SimpleDto;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.List;

public interface OrdersController {

    @GetMapping("/allOrders")
    ResponseEntity<List<OrdersDto>> getOrders();

    @PostMapping("/Orders")
    ResponseEntity<HttpStatus> createOrders(@RequestBody OrdersDto Orders);

    @PostMapping("/OrdersUpdate")
    ResponseEntity<HttpStatus> updateOrders(@RequestBody SimpleDto<OrdersDto> Orders);

    @PostMapping("/OrdersDelete")
    ResponseEntity<HttpStatus> deleteOrders(@RequestBody OrdersDto Orders);
}
