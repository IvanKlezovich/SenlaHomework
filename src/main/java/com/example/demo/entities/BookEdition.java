package com.example.demo.entities;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@EqualsAndHashCode
public class BookEdition {
    private Long id;
    private Books books;
    private Long year;
    private Long price;
}
