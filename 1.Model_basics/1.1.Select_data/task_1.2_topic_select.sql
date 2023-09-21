SELECT * FROM book;

SELECT author, title, price FROM book;

SELECT title AS Название, author AS Автор FROM book;

SELECT title, author, price, amount,
    price * amount AS total
FROM book;

SELECT title, amount,
    amount * 1.65 AS pack
FROM book;