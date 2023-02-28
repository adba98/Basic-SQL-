/* SELECT */
SELECT * FROM actor;
SELECT actor_id, first_name as nombre, last_name, last_name FROM actor;

/* DISTINCT */
SELECT DISTINCT store_id FROM customer;
SELECT DISTINCT customer_id FROM payment;

/* ORDER BY */
SELECT * FROM country ORDER BY country;
SELECT * FROM customer ORDER BY first_name DESC;

SELECT store_id as Tienda, first_name as Nombre, last_name as Apellido FROM customer ORDER BY Apellido ASC;
SELECT DISTINCT amount FROM payment ORDER BY amount ASC;

/* WHERE */
SELECT * FROM actor WHERE first_name = 'DAN';
SELECT * FROM city WHERE country_id = 102;
SELECT * FROM inventory WHERE film_id >= 50;
SELECT DISTINCT amount FROM payment WHERE amount < 3;

SELECT * FROM language WHERE language_id <> 2;
SELECT description, release_year FROM film WHERE title = 'IMPACT ALADDIN';

/* AND */
SELECT * FROM country WHERE country='Algeria' AND country_id = 2;

/* OR */
SELECT * FROM country WHERE country='Algeria' OR country_id = 12;
SELECT * FROM language WHERE language_id = 1 OR language_id = 2;

/* NOT */
SELECT * FROM category WHERE NOT name = 'Action';
SELECT DISTINCT(rating) FROM film WHERE NOT rating = 'R';

SELECT * FROM payment WHERE customer_id = 36 AND amount > 0.99 AND staff_id = 1;
SELECT * FROM rental WHERE NOT staff_id = 1 AND customer_id > 250 AND inventory_id < 100;

/* IN */
SELECT * FROM customer WHERE first_name IN ('MARY', 'PATRICIA');
SELECT * FROM film WHERE special_features IN ('Deleted Scenes', 'Trailers') AND rating IN('PG-13', 'PG-17');

SELECT * FROM film_text WHERE title IN ('ZORRO ARK', 'VIRGIN DAISY', 'UNITED PILOT');
SELECT * FROM city WHERE city IN ('Chiayi', 'Dongying', 'Fukuyama', 'Kilis');

/* BETWEEN */
SELECT * FROM payment WHERE amount BETWEEN 3 AND 5;
SELECT * FROM payment WHERE (amount  BETWEEN 2.99 AND 4.99 ) AND staff_id = 2 AND customer_id IN (1,2)

/* LIKE */
SELECT * FROM actor WHERE first_name LIKE 'a%' and last_name LIKE '%e';
SELECT * FROM actor WHERE first_name LIKE 'c%n' and last_name LIKE 'g%';