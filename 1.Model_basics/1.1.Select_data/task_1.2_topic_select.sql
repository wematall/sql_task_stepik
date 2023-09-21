SELECT * FROM book;

SELECT author, title, price FROM book;

SELECT title AS Название, author AS Автор FROM book;

SELECT title, author, price, amount,
    price * amount AS total
FROM book;

SELECT title, amount,
    amount * 1.65 AS pack
FROM book;

SELECT title,
    price,
    ROUND((price*18/100)/(1+18/100),2) AS tax,
    ROUND(price/(1+18/100),2) AS price_tax
FROM book;

SELECT title, author, amount,
    ROUND(price - (price*0.3), 2) AS new_price
FROM book;

SELECT title, amount, price,
    IF(amount<4, price*0.5, price*0.7) AS sale
FROM book;

SELECT title, amount, price,
    ROUND(IF(amount < 4, price*0.5, price*0.7), 2) AS sale
FROM book;

SELECT title, amount, price,
    ROUND(IF(amount<4, price*0.5, IF(amount<11, price*0.7, price*0.9)),2) AS sale,
    IF(amount<4, 'скидка 50%', IF(amount<11, 'скидка 30%', 'скидка 10%')) AS Ваша_скидка
FROM book;

SELECT author, title,
    ROUND(IF(author = "Булгаков М.А.", price+price*0.1,
    IF(author = "Есенин С.А.", price+price*0.05, price)),2) AS new_price
FROM book;

SELECT title, price
FROM book
WHERE price < 600;

SELECT title, price * amount AS total
FROM book
WHERE price * amount > 4000;

SELECT author, title, price
FROM book
WHERE amount < 10;



