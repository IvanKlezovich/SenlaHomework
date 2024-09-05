package com.example.demo.entities;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@EqualsAndHashCode
public class Users {
    private Long id;
    private String username;
    private String password;
    private Roles role;
}
