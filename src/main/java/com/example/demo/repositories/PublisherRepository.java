package com.example.demo.repositories;

import com.example.demo.entities.Publisher;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;


public interface PublisherRepository extends CrudRepository<Publisher, Long> {

    @Modifying
    @Query("update Publisher  p set p.name = :name, p.address = :adress where p.id = :id")
    void updatePublisherById(Long id, String name,String address);
}
