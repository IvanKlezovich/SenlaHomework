CREATE TABLE Orders
(
    ID          UUID PRIMARY KEY,
    buyer_id    UUID NOT NULL,
    book_id     UUID NOT NULL,
    Number      INTEGER,
    date        INTEGER,
    total_price DECIMAL(14, 2),
    status      VARCHAR(10),
    FOREIGN KEY (buyer_id) REFERENCES buyers(ID),
    FOREIGN KEY (book_id) REFERENCES books(ID)
);