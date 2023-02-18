SELECT * FROM customer;

SELECT first_name || ' ' || last_name AS full_name
FROM customer;

SELECT DISTINCT create_date
FROM customer;

SELECT *
FROM customer
ORDER BY first_name DESC;

SELECT film_id,
    title,
    description,
    release_year,
    rental_rate
FROM film
ORDER BY rental_rate ASC;

SELECT address, phone
FROM address 
INNER JOIN customer 
ON address.address_id = customer.address_id
AND address.district = 'Texas';

SELECT *
FROM film
WHERE film_id IN (15, 150);

SELECT film_id, title, description, length, rental_rate
FROM film
WHERE title = 'Name Detective';

SELECT film_id, title, description, length, rental_rate
FROM film
WHERE title LIKE 'Na%';

SELECT *
FROM film
ORDER BY replacement_cost ASC
LIMIT 10;

SELECT *
FROM film
ORDER BY replacement_cost ASC 
OFFSET 10
FETCH FIRST 10 ROWS ONLY;

SELECT customer.first_name, customer.last_name, payment.payment_date, payment.amount
FROM customer
INNER JOIN payment 
ON customer.customer_id = payment.customer_id
ORDER BY payment.customer_id ASC;


SELECT *
FROM film 
LEFT JOIN inventory  
ON film.film_id = inventory.film_id
WHERE inventory.inventory_id IS NULL;


SELECT city.city, country.country
FROM city
JOIN country 
ON city.country_id = country.country_id;


SELECT customer.customer_id, customer.first_name, customer.last_name, payment.amount , payment.payment_date 
FROM payment
INNER JOIN customer 
ON payment.customer_id = customer.customer_id 
INNER JOIN staff  
ON payment.staff_id = staff.staff_id;