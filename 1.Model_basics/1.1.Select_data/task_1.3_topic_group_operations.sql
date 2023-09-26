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

-- Найти среднюю цену книг каждого автора.
SELECT author, ROUND(AVG(price),2) AS Средняя_цена
FROM book
GROUP BY author;

-- task
SELECT author, ROUND(SUM(price*amount),2) AS Стоимость,
    ROUND(SUM(price*amount)*0.18/(1+0.18), 2) AS НДС,
    ROUND(SUM(price*amount)/(1+0.18), 2) AS Стоимость_без_НДС
FROM book
GROUP BY author;

-- Посчитать количество экземпляров книг на складе
SELECT SUM(amount) AS Количество
FROM book;

-- Посчитать общее количество экземпляров книг на складе и их стоимость
SELECT SUM(amount) AS Количество,
    SUM(price*amount) AS Стоимость
FROM book;

-- task
-- Вывести  цену самой дешевой книги, 
-- цену самой дорогой и среднюю цену уникальных книг на складе. 
-- Названия столбцов Минимальная_цена, Максимальная_цена, 
-- Средняя_цена соответственно. 
-- Среднюю цену округлить до двух знаков после запятой.

-- Пояснение. В задании нужно посчитать среднюю цену 
-- уникальных книг на складе, а не среднюю цену всех экземпляров книг.
SELECT MIN(price) AS Минимальная_цена,
    MAX(price) AS Максимальная_цена,
    ROUND(AVG(price),2) AS Средняя_цена
FROM book;

-- Найти минимальную и максимальную цену книг всех авторов, 
-- общая стоимость книг которых больше 5000.

SELECT author,
    MIN(price) AS Минимальная_цена,
    MAX(price) AS Максимальная_цена
FROM book
GROUP BY author
HAVING SUM(price * amount) > 5000
ORDER BY Минимальная_цена DESC;

-- task
-- Вычислить среднюю цену и суммарную стоимость тех книг, 
-- количество экземпляров которых принадлежит интервалу от 5 до 14, 
-- включительно. Столбцы назвать Средняя_цена и Стоимость, 
-- значения округлить до 2-х знаков после запятой.
SELECT 
    ROUND(AVG(price),2) AS Средняя_цена,
    ROUND(SUM(price * amount),2) AS Стоимость
FROM book
WHERE amount BETWEEN 5 AND 14;
