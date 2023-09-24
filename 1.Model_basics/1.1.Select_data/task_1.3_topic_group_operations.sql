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

-- task
-- Посчитать, количество различных книг и 
-- количество экземпляров книг каждого автора , 
--хранящихся на складе.  
-- Столбцы назвать Автор, Различных_книг и Количество_экземпляров соответственно.

SELECT author AS Автор, COUNT(amount) AS Различных_книг, SUM(amount) AS Количество_экземпляров
FROM book
GROUP BY author;

