EXPLAIN SELECT
            bo.ID AS BookID,
            bo.name AS BookName,
            a.full_name AS AuthorName,
            a.Biography AS AuthorBiography,
            bo.year AS Year,
            bo.price AS Price
        FROM
            books bo
                JOIN
            authors a ON bo.author_id = a.ID;