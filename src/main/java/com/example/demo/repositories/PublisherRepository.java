package com.example.demo.repositories;

import com.example.demo.entities.Publisher;

import java.util.List;
import java.util.Optional;

public interface PublisherRepository {
    void save(Publisher publisher);
    void delete(Publisher publisher);
    List<Publisher> findAll(); // TODO method must be Optional
    Optional<Publisher> findByName(String name);
    void update(Publisher newPublisher, Publisher oldPublisher);
}
