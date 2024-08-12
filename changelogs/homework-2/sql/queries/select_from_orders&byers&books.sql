EXPLAIN SELECT
            o.ID AS OrderID,
            b.FULL_NAME AS BuyerName,
            bo.name AS BookName,
            o.Number AS Quantity,
            o.date AS OrderDate,
            o.total_price AS TotalPrice,
            o.status AS OrderStatus
        FROM
            Orders o
                JOIN
            buyers b ON o.buyer_id = b.ID
                JOIN
            books bo ON o.book_id = bo.ID;