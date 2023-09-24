-- Выбор уникальных элементов столбца

SELECT DISTINCT author
FROM book;

SELECT author
FROM book
GROUP BY author;

-- Отобрать различные (уникальные) элементы столбца amount таблицы book.
SELECT DISTINCT amount
FROM book;

SELECT amount
FROM book
GROUP BY amount;

-- sum() count() example
SELECT author, sum(amount), count(amount)
FROM book
GROUP BY author;

