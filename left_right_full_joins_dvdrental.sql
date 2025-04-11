-- 1. Use LEFT JOIN to list all cities along with their country names.
-- Includes all cities even if there's no matching country.
SELECT city.city, country.country
FROM city
LEFT JOIN country ON city.country_id = country.country_id;

-- 2. Use RIGHT JOIN to list all payments and their associated customer names.
-- Includes all customers even if there's no matching payment (unlikely in this dataset).
SELECT payment.payment_id, customer.first_name, customer.last_name
FROM payment
RIGHT JOIN customer ON payment.customer_id = customer.customer_id;

-- 3. Use FULL JOIN to list all rentals and their associated customer names.
-- Includes all rentals and customers, even if they don’t match.
SELECT rental.rental_id, customer.first_name, customer.last_name
FROM rental
FULL JOIN customer ON rental.customer_id = customer.customer_id;
