CREATE TABLE books
(
    ID           UUID PRIMARY KEY,
    name         VARCHAR(50),
    author_id    UUID,
    genre_id     UUID,
    publisher_id UUID,
    suppliers_id UUID,
    year         VARCHAR(4),
    price        DECIMAL(14, 2),
    FOREIGN KEY (author_id) REFERENCES authors(ID),
    FOREIGN KEY (genre_id) REFERENCES genre (ID),
    FOREIGN KEY (publisher_id) REFERENCES publisher (ID),
    FOREIGN KEY (suppliers_id) REFERENCES suppliers (ID)
);