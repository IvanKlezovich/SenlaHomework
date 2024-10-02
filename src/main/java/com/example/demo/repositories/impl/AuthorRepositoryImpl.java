//package com.example.demo.repositories.impl;
//
//import com.example.demo.entities.Author;
//import com.example.demo.repositories.AbstractDAO;
//import com.example.demo.repositories.AuthorRepository;
//import jakarta.persistence.EntityManager;
//import jakarta.persistence.TypedQuery;
//import jakarta.persistence.criteria.*;
//import lombok.RequiredArgsConstructor;
//import org.springframework.stereotype.Repository;
//
//import java.sql.*;
//import java.util.ArrayList;
//import java.util.List;
//import java.util.Optional;
//
//@Repository
//@RequiredArgsConstructor
//public class AuthorRepositoryImpl extends AbstractDAO<Author, Long> {
//
//    private final EntityManager entityManager;
//
//    public void save(Author author) {
//        CriteriaBuilder cb = entityManager.getCriteriaBuilder();
//        CriteriaQuery<Author> cq = cb.createQuery(Author.class);
//    }
//
//    public void delete(Author author) {
//        CriteriaBuilder cb = entityManager.getCriteriaBuilder();
//        CriteriaDelete<Author> cq = cb.createCriteriaDelete(Author.class);
//        Root<Author> root = cq.from(Author.class);
//        cq.where(cb.equal(root.get("id"), author.getId()));
//    }
//
//    public List<Author> findAll() {
//        CriteriaBuilder cb = entityManager.getCriteriaBuilder();
//        CriteriaQuery<Author> cq = cb.createQuery(Author.class);
//        Root<Author> author = cq.from(Author.class);
//        cq.select(author);
//        TypedQuery<Author> query = entityManager.createQuery(cq);
//        return query.getResultList();
//    }
//
//    public Optional<Author> findByName(String name) {
//        CriteriaBuilder cb = entityManager.getCriteriaBuilder();
//        CriteriaQuery<Author> cq = cb.createQuery(Author.class);
//        Root<Author> author = cq.from(Author.class);
//        cq.select(author).where(cb.equal(author.get("name"), name));
//        TypedQuery<Author> query = entityManager.createQuery(cq);
//        return Optional.ofNullable(query.getSingleResult());
//    }
//
//    public void update(Author newAuthor, Author oldAuthor) {
//        CriteriaBuilder cb = entityManager.getCriteriaBuilder();
//        CriteriaUpdate<Author> cq = cb.createCriteriaUpdate(Author.class);
//        Root<Author> author = cq.from(Author.class);
//        cq.set("biography", newAuthor.getBiography());
//        cq.set("birth_date", newAuthor.getBirthDate());
//        cq.set("country", newAuthor.getCountry());
//        cq.set("full_name", newAuthor.getFullName());
//        cq.where(cb.equal(author.get("id"), oldAuthor.getId()));
//    }
//
//    public Optional<Author> findById(Long id) {
//        CriteriaBuilder cb = entityManager.getCriteriaBuilder();
//        CriteriaQuery<Author> cq = cb.createQuery(Author.class);
//        Root<Author> author = cq.from(Author.class);
//        cq.select(author).where(cb.equal(author.get("id"), id));
//        TypedQuery<Author> query = entityManager.createQuery(cq);
//        return Optional.ofNullable(query.getSingleResult());
//    }
//}
