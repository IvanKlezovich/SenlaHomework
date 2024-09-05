package com.example.demo.entities;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@EqualsAndHashCode
public class Bookstore {
    private Long id;
    private String name;
    private Long deliveryDate;
    private int capacity;
}
