package com.example.demo.repositories.impl;

import com.example.demo.entities.Publisher;
import com.example.demo.repositories.PublisherRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Repository
public class PublisherRepositoryImpl implements PublisherRepository {

    private final List<Publisher> publishersList = new ArrayList<>();

    public void save(Publisher publisher){
        publishersList.add(publisher);
    }

    public void delete(Publisher publisher){
        publishersList.remove(publisher);
    }

    public List<Publisher> findAll(){
        return publishersList;
    }

    public Optional<Publisher> findByName(String name){
        return publishersList.stream()
                .filter(publisher -> name.equals(publisher.getName()))
                .findFirst();
    }

    public void update(Publisher newPublisher, Publisher oldPublisher){
        int index = publishersList.indexOf(oldPublisher);
        if(index != -1) {
            publishersList.set(index, newPublisher);
        }
    }
}
