package com.example.demo.entities;

import lombok.*;

import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@EqualsAndHashCode
public class OrderItems {
    private Long orderItemId;
    private List<BookEdition> bookEditions;

}
