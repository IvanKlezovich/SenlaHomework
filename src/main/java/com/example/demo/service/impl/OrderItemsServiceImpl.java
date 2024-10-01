//package com.example.demo.service.impl;
//
//import com.example.demo.dtos.OrderItemsDto;
//import com.example.demo.dtos.ResponseDto;
//import com.example.demo.dtos.UpdateDto;
//import com.example.demo.entities.OrderItems;
//import com.example.demo.repositories.OrderItemsRepository;
//import com.example.demo.service.OrderItemsService;
//import lombok.RequiredArgsConstructor;
//import org.springframework.stereotype.Service;
//
//import java.util.ArrayList;
//import java.util.List;
//import java.util.Random;
//
///**
// * Service implementation for managing {@link OrderItemsDto} entities.
// * This service provides methods for retrieving, creating, updating, and deleting order items.
// *
// * @author Klezovich Ivan
// * @since 2023-10-04
// */
//@Service
//@RequiredArgsConstructor
//public class OrderItemsServiceImpl implements OrderItemsService {
//
//    private final OrderItemsRepository orderItemsRepository;
//    private final Random random;
//
//    /**
//     * Retrieves all order items.
//     *
//     * @return a list of {@link OrderItemsDto} containing all order items.
//     */
//    public List<OrderItemsDto> getAllOrderItems() {
//        List<OrderItemsDto> orderItemsDtoList = new ArrayList<>();
//
//        orderItemsRepository.findAll().forEach(orderItems -> orderItemsDtoList.add(OrderItemsDto.builder()
//                .bookEditions(orderItems.getBookEditions())
//                .build()));
//
//        return orderItemsDtoList;
//    }
//
//    /**
//     * Deletes an order item.
//     *
//     * @param orderItemsDto the order item data transfer object containing the order item details to be deleted.
//     * @return a {@link ResponseDto} indicating the result of the operation.
//     */
//    public ResponseDto delete(OrderItemsDto orderItemsDto) {
//        OrderItems orderItems = orderItemsRepository.findByName(orderItemsDto.bookEditions()).orElse(null); //TODO replace with orElseThrow
//        orderItemsRepository.delete(orderItems);
//
//        return ResponseDto.builder()
//                .message("ОК")
//                .build();
//    }
//
//    /**
//     * Saves a new order item.
//     *
//     * @param orderItemsDto the order item data transfer object containing the order item details to be saved.
//     * @return a {@link ResponseDto} indicating the result of the operation.
//     */
//    public ResponseDto save(OrderItemsDto orderItemsDto) {
//        OrderItems orderItems = new OrderItems(random.nextLong(), orderItemsDto.bookEditions());
//        orderItemsRepository.save(orderItems);
//
//        return ResponseDto.builder()
//                .message("ОК")
//                .build();
//    }
//
//    /**
//     * Updates an existing order item.
//     *
//     * @param orderItemsDto the update data transfer object containing the old and new order item details.
//     * @return a {@link ResponseDto} indicating the result of the operation.
//     */
//    public ResponseDto update(UpdateDto<OrderItemsDto> orderItemsDto) {
//
//        OrderItemsDto newOrdersItem = orderItemsDto.getNewValue();
//        OrderItems orderItems = orderItemsRepository.findByName(orderItemsDto.getOldValue().bookEditions()).orElse(null);
//        OrderItems updatedOrderItem = new OrderItems(orderItems.getOrderItemId(), newOrdersItem.bookEditions());
//
//        orderItemsRepository.update(updatedOrderItem, orderItems);
//        return ResponseDto.builder()
//                .message("ОК")
//                .build();
//    }
//}
