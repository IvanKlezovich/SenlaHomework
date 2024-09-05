package com.example.demo.entities;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@EqualsAndHashCode
public class Books {
    private Long id;
    private String title;
    private Author author;
    private Genre genre;
}
