package com.example.demo;

import com.example.demo.configs.SpringConfiguration;
import com.example.demo.controllers.AuthorController;
import com.example.demo.controllers.BooksController;
import com.example.demo.controllers.GenreController;
import com.example.demo.controllers.PublisherController;
import com.example.demo.dtos.*;
import lombok.SneakyThrows;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DemoApplication {

    private static final Logger  logger = Logger.getLogger(DemoApplication.class.getName());
    
    private static final String MESSAGE_OLD = "Old value: {0}";
    private static final String MESSAGE_NEW = "New value: {0}";

    @SneakyThrows
    private static void testsForAuthor(ApplicationContext context) {
        AuthorController authorController = context.getBean(AuthorController.class);
        AuthorDto authorDto = new AuthorDto("Омар Хаям", "biography", 170000L, "Turkey");
        AuthorDto authorDto1 = new AuthorDto("Омор Хаям", "biography", 170L, "Tyrkey");
        authorController.createAuthor(authorDto);
        authorController.createAuthor(authorDto1);
        logger.log(Level.INFO, MESSAGE_OLD, authorController.getAuthor());

        authorController.deleteAuthor(authorDto);
        logger.log(Level.INFO, MESSAGE_NEW, authorController.getAuthor().getBody());

        UpdateDto<AuthorDto> updateDto = new UpdateDto<>();
        updateDto.setNewValue(authorDto);
        updateDto.setOldValue(authorDto1);

        logger.log(Level.INFO, MESSAGE_OLD, authorController.getAuthor().getBody());
        authorController.updateAuthor(updateDto);
        logger.log(Level.INFO, MESSAGE_NEW, authorController.getAuthor().getBody());

        logger.log(Level.INFO, "-----------------------------END Author--------------------------------------");
    }

    @SneakyThrows
    private static void testsForGenre(ApplicationContext context) {
        GenreController genreController = context.getBean(GenreController.class);
        GenreDto genreDto = new GenreDto("Fairy Tail");
        GenreDto genreDto1 = new GenreDto("Fairu Tael");
        genreController.createGenre(genreDto);
        genreController.createGenre(genreDto1);
        logger.log(Level.INFO, MESSAGE_OLD, genreController.getGenre().getBody());

        genreController.deleteGenre(genreDto);
        logger.log(Level.INFO, MESSAGE_NEW, genreController.getGenre().getBody());

        UpdateDto<GenreDto> updateDto = new UpdateDto<>();
        updateDto.setNewValue(genreDto);
        updateDto.setOldValue(genreDto1);

        logger.log(Level.INFO, MESSAGE_OLD, genreController.getGenre().getBody());
        genreController.updateGenre(updateDto);
        logger.log(Level.INFO, MESSAGE_NEW, genreController.getGenre().getBody());

        logger.log(Level.INFO, "-----------------------------END Genre--------------------------------------");
    }

    @SneakyThrows
    private static void testsForBooks(ApplicationContext context) {
        BooksController booksController = context.getBean(BooksController.class);
        BooksDto booksDto = new BooksDto("Поэмы и стихи", "Омар Хаям", "Fairy Tail");
        BooksDto booksDto1 = new BooksDto("Поэмы и cтихи", "Омар Хаям", "Fairy Tail");
        booksController.createBook(booksDto);
        booksController.createBook(booksDto1);
        logger.log(Level.INFO, MESSAGE_OLD, booksController.getBooks().getBody());

        booksController.deleteBook(booksDto);
        logger.log(Level.INFO, MESSAGE_NEW, booksController.getBooks().getBody());

        UpdateDto<BooksDto> updateDto = new UpdateDto<>();
        updateDto.setNewValue(booksDto);
        updateDto.setOldValue(booksDto1);

        logger.log(Level.INFO, MESSAGE_OLD, booksController.getBooks().getBody());
        booksController.updateBook(updateDto);
        logger.log(Level.INFO, MESSAGE_NEW, booksController.getBooks().getBody());

        logger.log(Level.INFO, "-----------------------------END Books--------------------------------------");
    }

    @SneakyThrows
    private static void testsForPublishers(ApplicationContext context) {
        PublisherController publisherController = context.getBean(PublisherController.class);
        PublisherDto publisherDto = new PublisherDto("Аверсэв", "220090, Республика Беларусь, г.Минск, ул.Олешева, д.1, офис 309.");
        PublisherDto publisherDto1 = new PublisherDto("Аверсеф", "220190, Республика Белорусь, г.Минск, ул.Олешева, д.1, офис 309.");
        publisherController.createPublisher(publisherDto);
        publisherController.createPublisher(publisherDto1);
        logger.log(Level.INFO, MESSAGE_OLD, publisherController.getPublisher().getBody());

        publisherController.deletePublisher(publisherDto);
        logger.log(Level.INFO, MESSAGE_NEW, publisherController.getPublisher().getBody());

        UpdateDto<PublisherDto> updateDto = new UpdateDto<>();
        updateDto.setNewValue(publisherDto);
        updateDto.setOldValue(publisherDto1);

        logger.log(Level.INFO, MESSAGE_OLD, publisherController.getPublisher().getBody());
        publisherController.updatePublisher(updateDto);
        logger.log(Level.INFO, MESSAGE_NEW, publisherController.getPublisher().getBody());

        logger.log(Level.INFO, "-----------------------------END Publisher--------------------------------------");
    }

    @SneakyThrows
    public static void main(String[] args) {
        ApplicationContext context = new AnnotationConfigApplicationContext(SpringConfiguration.class);

        //testsForAuthor(context);

        //testsForGenre(context);

        ExecutorService executorService = Executors.newFixedThreadPool(5);

        for (int i = 0; i < 5; i++) {
            executorService.submit(() -> {
                try {
                    testsForBooks(context);
                } catch (Exception e) {
                    logger.log(Level.SEVERE, "Ошибка в потоке", e);
                }
            });
        }

        executorService.shutdown();
        executorService.awaitTermination(1, TimeUnit.MINUTES);

        //testsForBooks(context);

        //testsForPublishers(context);
    }
}
