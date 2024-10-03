//package com.example.demo.controllers.impl;
//
//import com.example.demo.controllers.OrdersController;
//import com.example.demo.dtos.OrdersDto;
//import com.example.demo.dtos.SimpleDto;
//import com.example.demo.service.OrdersService;
//import lombok.RequiredArgsConstructor;
//import org.springframework.http.HttpStatus;
//import org.springframework.http.ResponseEntity;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController;
//
//import java.util.List;
//
//@RestController
//@RequestMapping("/book")
//@RequiredArgsConstructor
//public class OrdersControllerImpl implements OrdersController {
//
//    private final OrdersService ordersService;
//
//    public ResponseEntity<List<OrdersDto>> getOrders() {
//        List<OrdersDto> books = ordersService.getAllOrders();
//        return (books.isEmpty()) ? ResponseEntity.noContent().build() : ResponseEntity.ok(books);
//    }
//
//    public ResponseEntity<HttpStatus> createOrders(OrdersDto ordersDto) {
//        ordersService.save(ordersDto);
//        return ResponseEntity.status(HttpStatus.CREATED).build();
//    }
//
//    public ResponseEntity<HttpStatus> updateOrders(SimpleDto<OrdersDto> ordersDtoUpdateDto) {
//        ordersService.update(ordersDtoUpdateDto);
//        return ResponseEntity.status(HttpStatus.OK).build();
//    }
//
//    public ResponseEntity<HttpStatus> deleteOrders(OrdersDto ordersDto) {
//        ordersService.delete(ordersDto);
//        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
//    }
//}
