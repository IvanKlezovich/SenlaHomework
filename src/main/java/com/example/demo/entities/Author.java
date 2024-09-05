package com.example.demo.entities;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@EqualsAndHashCode
public class Author {
    private Long id;
    private String fullName;
    private String biography;
    private Long birthDate;
    private String country;
}
