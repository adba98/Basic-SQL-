SELECT *
FROM customer c, actor a
WHERE c.first_name = a.first_name;

SELECT f.title, f.description, l.name
FROM film f
INNER JOIN language l on f.language_id = l.language_id;

SELECT a.address as Direccion, c.city Ciudad
FROM address a
INNER JOIN city c on a.city_id = c.city_id;

SELECT *
FROM customer c
RIGHT JOIN actor a ON c.first_name = a.first_name;

SELECT *
FROM customer c
LEFT JOIN actor a ON c.first_name = a.first_name;
