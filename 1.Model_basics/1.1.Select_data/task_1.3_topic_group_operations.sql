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

-- Вывести минимальную цену книги каждого автора
SELECT author, MIN(price) AS min_price
FROM book
GROUP BY author;

-- task
-- Вывести фамилию и инициалы автора, 
-- минимальную, максимальную и среднюю цену книг каждого автора . 
-- Вычисляемые столбцы назвать 
-- Минимальная_цена, Максимальная_цена и Средняя_цена соответственно.

SELECT author, 
    MIN(price) AS Минимальная_цена,
    MAX(price) AS Максимальная_цена,
    AVG(price) AS Средняя_цена
FROM book
GROUP BY author;

-- Вывести суммарную стоимость книг каждого автора.
SELECT author, SUM(price * amount) AS Стоимость
FROM book
GROUP BY author;

