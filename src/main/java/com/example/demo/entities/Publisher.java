package com.example.demo.entities;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@EqualsAndHashCode
public class Publisher {
    private Long id;
    private String name;
    private String address;
}
