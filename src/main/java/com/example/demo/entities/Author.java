package com.example.demo.entities;

import lombok.*;
import java.util.Objects;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Author {
    private Long id;
    private String fullName;
    private String biography;
    private Long birthDate;
    private String country;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Author author = (Author) o;
        return Objects.equals(id, author.id) && Objects.equals(fullName, author.fullName) && Objects.equals(biography, author.biography);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, fullName, biography);
    }
}
