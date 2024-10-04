package com.example.demo.repositories;

import com.example.demo.entities.Bookstore;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;
import java.util.UUID;

public interface BookstoreRepository extends CrudRepository<Bookstore, UUID> {

    @Transactional
    @Query("select b from Bookstore b where b.id = :id")
    Optional<Bookstore> getBookstoreById(UUID id);

    @Transactional
    @Modifying
    @Query("update Bookstore b set b.name = :name, b.capacity = :capacity, " +
            "b.deliveryDate = :deliveryDate where b.id = :id")
    void updateBookstoreById(UUID id, String name, int capacity, Long deliveryDate);
}
