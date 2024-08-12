CREATE TABLE authors
(
    ID        UUID PRIMARY KEY,
    full_name VARCHAR(100),
    Biography VARCHAR(255),
    birthday  INTEGER,
    Country   VARCHAR(50)
);