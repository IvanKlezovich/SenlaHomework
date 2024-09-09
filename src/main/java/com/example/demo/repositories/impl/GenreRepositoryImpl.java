package com.example.demo.repositories.impl;

import com.example.demo.entities.Author;
import com.example.demo.entities.Genre;
import com.example.demo.repositories.GenreRepository;
import com.example.demo.util.impl.PostrgeConnectionPool;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import static com.example.demo.repositories.BaseRepository.*;

@Repository
@RequiredArgsConstructor
public class GenreRepositoryImpl implements GenreRepository {

    private final PostrgeConnectionPool connectionPool;

    private final List<Genre> genreList = new ArrayList<>();

    public void save(Genre genre) {
        String sql = INSERT_GENRES.formatted(genre.getNameGenre());

        try (Connection connection = connectionPool.getConnection();
             Statement statement = connection.createStatement()) {
            statement.executeUpdate(sql);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void delete(Genre genre) {
        String sql = DELETE.formatted(GENRES_TABLE_NAME, genre.getId());
        try (Connection connection = connectionPool.getConnection();
             Statement statement = connection.createStatement()) {
            statement.executeUpdate(sql);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Genre> findAll() {
        List<Genre> genreList = new ArrayList<>();

        int lastID = 0, size = 10;

        try (Connection connection = connectionPool.getConnection();
             Statement statement = connection.createStatement()) {
            ResultSet rs = statement.executeQuery(SELECT_ALL.formatted(GENRES_TABLE_NAME, lastID, size));

            while (rs.next()) {
                Genre genre = new Genre();
                genre.setId(rs.getLong("id"));
                genre.setNameGenre(rs.getString("name_genre"));
                genreList.add(genre);
            }

            return genreList;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public Optional<Genre> findByName(String name) {
        String sql = SELECT_LIMIT_1.formatted(GENRES_TABLE_NAME, "name_genre", name);
        try (Connection connection = connectionPool.getConnection();
             Statement statement = connection.createStatement()) {
            return executeQuery(statement, sql);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public Optional<Genre> findById(Long id) {
        String sql = SELECT_LIMIT_1.formatted(GENRES_TABLE_NAME, "id", id);
        try (Connection connection = connectionPool.getConnection();
             Statement statement = connection.createStatement()) {
            return executeQuery(statement, sql);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public void update(Genre oldGenre, Genre newGenre) {
        String sql = UPDATE_QUERY.formatted(newGenre.getNameGenre(), oldGenre.getId());
        try (Connection connection = connectionPool.getConnection();
             Statement statement = connection.createStatement()) {
            statement.executeUpdate(sql);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    private Optional<Genre> executeQuery(Statement statement, String sql) throws SQLException {
        ResultSet rs = statement.executeQuery(sql);
        Genre genre = new Genre();

        while (rs.next()) {
            genre.setId(rs.getLong("id"));
            genre.setNameGenre(rs.getString("name_genre"));
        }
        return Optional.of(genre);
    }
}
