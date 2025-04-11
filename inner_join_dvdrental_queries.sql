-- 1. List city and country names together using INNER JOIN between city and country tables
SELECT city.city, country.country
FROM city
INNER JOIN country ON city.country_id = country.country_id;

-- 2. List payment_id, first_name, and last_name using INNER JOIN between payment and customer tables
SELECT payment.payment_id, customer.first_name, customer.last_name
FROM payment
INNER JOIN customer ON payment.customer_id = customer.customer_id;

-- 3. List rental_id, first_name, and last_name using INNER JOIN between rental and customer tables
SELECT rental.rental_id, customer.first_name, customer.last_name
FROM rental
INNER JOIN customer ON rental.customer_id = customer.customer_id;
