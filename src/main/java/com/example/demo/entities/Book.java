//package com.example.demo.entities;
//
//import jakarta.persistence.*;
//import jakarta.validation.constraints.NotNull;
//import jakarta.validation.constraints.Size;
//import lombok.AllArgsConstructor;
//import lombok.Getter;
//import lombok.NoArgsConstructor;
//import lombok.Setter;
//import org.hibernate.proxy.HibernateProxy;
//
//import java.util.List;
//import java.util.Objects;
//
//@Entity
//@AllArgsConstructor
//@NoArgsConstructor
//@Getter
//@Setter
//@Table(name = "books")
//public class Book{
//
//    @Id
//    @Column(name = "book_id")
//    private Long id;
//
//    @Column(name = "title")
//    private String title;
//
//    @NotNull(message = "У книги должен быть по крайней мере один автор")
//    @OneToMany
//    private List<Author> author;
//
//    @Column(name = "genre")
//    @OneToMany
//    private Genre genre;
//
//    @Override
//    public final boolean equals(Object o) {
//        if (this == o) return true;
//        if (o == null) return false;
//        Class<?> oEffectiveClass = o instanceof HibernateProxy ? ((HibernateProxy) o).getHibernateLazyInitializer().getPersistentClass() : o.getClass();
//        Class<?> thisEffectiveClass = this instanceof HibernateProxy ? ((HibernateProxy) this).getHibernateLazyInitializer().getPersistentClass() : this.getClass();
//        if (thisEffectiveClass != oEffectiveClass) return false;
//        Book book = (Book) o;
//        return getId() != null && Objects.equals(getId(), book.getId());
//    }
//
//    @Override
//    public final int hashCode() {
//        return this instanceof HibernateProxy ? ((HibernateProxy) this).getHibernateLazyInitializer().getPersistentClass().hashCode() : getClass().hashCode();
//    }
//}
