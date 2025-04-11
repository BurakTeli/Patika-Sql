-- 1. How many films have a length greater than the average film length?
SELECT COUNT(*) AS films_above_average_length
FROM film
WHERE length > (SELECT AVG(length) FROM film);

-- 2. How many films have the highest rental_rate value?
SELECT COUNT(*) AS films_with_max_rental_rate
FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

-- 3. List all films that have both the minimum rental_rate and the minimum replacement_cost.
SELECT *
FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
  AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);

-- 4. List customers who have made the most number of payments (most purchases).
-- Show customer ID, name, and number of payments.
SELECT 
    customer.customer_id,
    customer.first_name,
    customer.last_name,
    COUNT(payment.payment_id) AS total_payments
FROM payment
INNER JOIN customer ON payment.customer_id = customer.customer_id
GROUP BY customer.customer_id, customer.first_name, customer.last_name
ORDER BY total_payments DESC;
