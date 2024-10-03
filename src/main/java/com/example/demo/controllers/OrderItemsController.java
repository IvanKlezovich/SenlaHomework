//package com.example.demo.controllers;
//
//import com.example.demo.dtos.OrderItemsDto;
//import com.example.demo.dtos.SimpleDto;
//import org.springframework.http.HttpStatus;
//import org.springframework.http.ResponseEntity;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestBody;
//
//import java.util.List;
//
//public interface OrderItemsController {
//
//    @GetMapping("/allOrderItems")
//    ResponseEntity<List<OrderItemsDto>> getOrderItems();
//
//    @PostMapping("/OrderItems")
//    ResponseEntity<HttpStatus> createOrderItems(@RequestBody OrderItemsDto OrderItems);
//
//    @PostMapping("/OrderItemsUpdate")
//    ResponseEntity<HttpStatus> updateOrderItems(@RequestBody SimpleDto<OrderItemsDto> OrderItems);
//
//    @PostMapping("/OrderItemsDelete")
//    ResponseEntity<HttpStatus> deleteOrderItems(@RequestBody OrderItemsDto OrderItems);
//}
