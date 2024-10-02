//package com.example.demo.repositories.impl;
//
//import com.example.demo.entities.Books;
//import com.example.demo.repositories.AuthorRepository;
//import com.example.demo.repositories.BooksRepository;
//import com.example.demo.repositories.GenreRepository;
//import lombok.RequiredArgsConstructor;
//import org.springframework.stereotype.Repository;
//
//import java.sql.Connection;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.sql.Statement;
//import java.util.ArrayList;
//import java.util.List;
//import java.util.Optional;
//
//import static com.example.demo.repositories.BaseRepository.*;
//
//@Repository
//@RequiredArgsConstructor
//public class BooksRepositoryImpl implements BooksRepository {
//
//    private final PostrgeConnectionPool connectionPool;
//
//    private final AuthorRepository authorRepository;
//
//    private final GenreRepository genreRepository;
//
//    public void save(Books books) {
//        String sql = INSERT_BOOK.formatted(books.getTitle(), books.getAuthor().getId(), books.getGenre().getId());
//
//        try {
//            Connection connection = connectionPool.getConnection();
//            Statement statement = connection.createStatement();
//            statement.executeUpdate(sql);
//            connectionPool.releaseConnection(connection);
//        } catch (SQLException e) {
//            e.printStackTrace();
//            throw new RuntimeException(e);
//        }
//    }
//
//    public void delete(Books books) {
//        String sql = DELETE.formatted(BOOK_TABLE_NAME, books.getId());
//        try (Connection connection = connectionPool.getConnection();
//             Statement statement = connection.createStatement()) {
//            statement.executeUpdate(sql);
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//
//    public List<Books> findAll() {
//        List<Books> booksList = new ArrayList<>();
//
//        int lastID = 0, size = 10;
//
//        try (Connection connection = connectionPool.getConnection();
//             Statement statement = connection.createStatement()) {
//            ResultSet rs = statement.executeQuery(SELECT_ALL.formatted(BOOK_TABLE_NAME, lastID, size));
//
//            while (rs.next()) {
//                Books books = new Books();
//                books.setId(rs.getLong("id"));
//                books.setTitle(rs.getString("title"));
//                books.setAuthor(authorRepository.findById(rs.getLong("author_id")).get());
//                books.setGenre(genreRepository.findById(rs.getLong("genre_id")).get());
//                booksList.add(books);
//            }
//
//            return booksList;
//        } catch (SQLException e) {
//            e.printStackTrace();
//            throw new RuntimeException(e);
//        }
//    }
//
//    public Optional<Books> findByTitle(String title) {
//        String sql = SELECT_LIMIT_1.formatted(BOOK_TABLE_NAME, "title", title);
//        try (Connection connection = connectionPool.getConnection();
//             Statement statement = connection.createStatement()) {
//
//            ResultSet rs = statement.executeQuery(sql);
//            Books books = new Books();
//
//            while (rs.next()) {
//                books.setId(rs.getLong("id"));
//                books.setTitle(rs.getString("title"));
//                books.setAuthor(authorRepository.findById(rs.getLong("author_id")).get());
//                books.setGenre(genreRepository.findById(rs.getLong("genre_id")).get());
//            }
//
//            return Optional.ofNullable(books);
//        } catch (Exception e) {
//            throw new RuntimeException(e);
//        }
//    }
//
//    public void update(Books oldBooks, Books newBooks) {
//        String sql = UPDATE_QUERY.formatted(newBooks.getTitle(),
//                newBooks.getAuthor().getId(), newBooks.getGenre().getId(), oldBooks.getId());
//        try {
//            Connection connection = connectionPool.getConnection();
//            Statement statement = connection.createStatement();
//            statement.executeUpdate(sql);
//            connectionPool.releaseConnection(connection);
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//}
