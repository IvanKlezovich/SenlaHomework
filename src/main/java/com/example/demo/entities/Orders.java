package com.example.demo.entities;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@EqualsAndHashCode
public class Orders {
    private Long id;
    private Long userId;
    private Long orderItemId;
    private Long totalPrice;
    private Long date;
    private Status status;
}
