-- 1. Use LEFT JOIN to list all city names and their corresponding country names.
-- This will include all cities, even if there is no matching country.
SELECT city.city, country.country
FROM city
LEFT JOIN country ON city.country_id = country.country_id;

-- 2. Use RIGHT JOIN to list all payment IDs and corresponding customer names.
-- This will include all payments, even if there is no matching customer (unlikely but for demonstration).
SELECT payment.payment_id, customer.first_name, customer.last_name
FROM payment
RIGHT JOIN customer ON payment.customer_id = customer.customer_id;

-- 3. Use FULL JOIN to list all rental IDs and corresponding customer names.
-- This will include all rentals and all customers, even if there is no match on either side.
SELECT rental.rental_id, customer.first_name, customer.last_name
FROM rental
FULL JOIN customer ON rental.customer_id = customer.customer_id;
