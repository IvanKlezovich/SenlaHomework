package com.example.demo.repositories;

import com.example.demo.entities.Publisher;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.UUID;


public interface PublisherRepository extends CrudRepository<Publisher, UUID> {

    @Modifying
    @Query("update Publisher  p set p.name = :name, p.address = :adress where p.id = :id")
    void updatePublisherById(UUID id, String name, String address);
}
