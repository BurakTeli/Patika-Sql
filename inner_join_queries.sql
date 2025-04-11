-- 1. Use INNER JOIN to list city and country names together from the city and country tables.
SELECT city.city, country.country
FROM city
INNER JOIN country ON city.country_id = country.country_id;

-- 2. Use INNER JOIN to list payment_id along with the customer's first and last name.
-- Joining customer and payment tables.
SELECT payment.payment_id, customer.first_name, customer.last_name
FROM payment
INNER JOIN customer ON payment.customer_id = customer.customer_id;

-- 3. Use INNER JOIN to list rental_id along with the customer's first and last name.
-- Joining customer and rental tables.
SELECT rental.rental_id, customer.first_name, customer.last_name
FROM rental
INNER JOIN customer ON rental.customer_id = customer.customer_id;
