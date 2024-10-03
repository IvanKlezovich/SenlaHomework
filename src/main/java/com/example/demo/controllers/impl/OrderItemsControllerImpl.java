//package com.example.demo.controllers.impl;
//
//import com.example.demo.controllers.OrderItemsController;
//import com.example.demo.dtos.OrderItemsDto;
//import com.example.demo.dtos.UpdateDto;
//import com.example.demo.service.OrderItemsService;
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
//public class OrderItemsControllerImpl implements OrderItemsController {
//
//    private final OrderItemsService orderItemsService;
//
//    public ResponseEntity<List<OrderItemsDto>> getOrderItems() {
//        List<OrderItemsDto> books = orderItemsService.getAllI();
//        return (books.isEmpty()) ? ResponseEntity.noContent().build() : ResponseEntity.ok(books);
//    }
//
//    public ResponseEntity<HttpStatus> createOrderItems(OrderItemsDto orderItemsDto) {
//        orderItemsService.save(orderItemsDto);
//        return ResponseEntity.status(HttpStatus.CREATED).build();
//    }
//
//    public ResponseEntity<HttpStatus> updateOrderItems(UpdateDto<OrderItemsDto> orderItemsDtoUpdateDto) {
//        orderItemsService.update(orderItemsDtoUpdateDto);
//        return ResponseEntity.status(HttpStatus.OK).build();
//    }
//
//    public ResponseEntity<HttpStatus> deleteOrderItems(OrderItemsDto orderItemsDto) {
//        orderItemsService.delete(orderItemsDto);
//        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
//    }
//}
