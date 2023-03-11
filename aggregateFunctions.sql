SELECT SUM(amount) FROM payment;
SELECT inventory_id + film_id + store_id FROM inventory;

SELECT COUNT(*) FROM actor;
SELECT AVG(amount) FROM payment;

SELECT MIN(length) FROM film;
SELECT MIN(replacement_cost) FROM film;


/* GROUP BY */
SELECT last_name FROM actor GROUP BY last_name;

/* Es lo mismo que */
SELECT last_name, count(*) FROM actor GROUP BY last_name;

SELECT DISTINCT last_name FROM actor;


SELECT c.customer_id, c.first_name, c.last_name, SUM(p.amount)
FROM payment p INNER JOIN customer c on c.customer_id = p.customer_id
GROUP BY 1, 2, 3;