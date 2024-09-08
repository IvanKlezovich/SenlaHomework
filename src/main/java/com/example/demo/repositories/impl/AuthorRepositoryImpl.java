package com.example.demo.repositories.impl;

import com.example.demo.entities.Author;
import com.example.demo.repositories.AuthorRepository;
import com.example.demo.util.impl.PostrgeConnectionPool;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Repository
@RequiredArgsConstructor
public class AuthorRepositoryImpl implements AuthorRepository {

    private final PostrgeConnectionPool connectionPool;

    private static final String AUTHOR_TABLE_NAME = "authors";

    public void save(Author author) {
        String sql = INSERT.formatted(AUTHOR_TABLE_NAME, "full_name, biography, birth_date, country", "'" + author.getFullName()
                + "','" + author.getBiography() + "'," + author.getBirthDate() + ", '" + author.getCountry() + "'");

        try (Connection connection = connectionPool.getConnection();
             Statement statement = connection.createStatement();) {
            statement.executeUpdate(sql);
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    public void delete(Author author) {
        String sql = DELETE.formatted(AUTHOR_TABLE_NAME, author.getId());
        try (Connection connection = connectionPool.getConnection();
             Statement statement = connection.createStatement()) {
            statement.executeUpdate(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Author> findAll() {
        List<Author> authorList = new ArrayList<>();

        int lastID = 0, size = 10;

        try (Connection connection = connectionPool.getConnection();
             Statement statement = connection.createStatement()) {
            ResultSet rs = statement.executeQuery(SELECT_ALL.formatted(AUTHOR_TABLE_NAME, lastID, size));

            while (rs.next()) {
                Author author = new Author();
                author.setId(rs.getLong("id"));
                author.setBiography(rs.getString("biography"));
                author.setCountry(rs.getString("country"));
                author.setBirthDate(rs.getLong("birth_date"));
                author.setFullName(rs.getString("full_name"));
                authorList.add(author);
            }

            return authorList;
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    public Optional<Author> findByName(String name) {
        String sql = SELECT_LIMIT_1.formatted(AUTHOR_TABLE_NAME, "full_name", name);
        try (Connection connection = connectionPool.getConnection();
             Statement statement = connection.createStatement()) {

            ResultSet rs = statement.executeQuery(sql);
            Author author = new Author();

            while (rs.next()) {
                author.setId(rs.getLong("id"));
                author.setBiography(rs.getString("biography"));
                author.setCountry(rs.getString("country"));
                author.setBirthDate(rs.getLong("birth_date"));
                author.setFullName(rs.getString("full_name"));
            }

            return Optional.ofNullable(author);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public void update(Author newAuthor, Author oldAuthor) {
        String sql = UPDATE_QUERY.formatted(AUTHOR_TABLE_NAME, newAuthor.getFullName(),
                newAuthor.getBiography(), newAuthor.getBirthDate(), newAuthor.getCountry());
        try (Connection connection = connectionPool.getConnection();
             Statement statement = connection.createStatement()) {

            ResultSet rs = statement.getResultSet();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
