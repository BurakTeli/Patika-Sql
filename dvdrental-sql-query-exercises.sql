-- 1. Select all columns from the film table 
-- where the replacement_cost is between 12.99 (inclusive) and 16.99 (inclusive).
SELECT *
FROM film
WHERE replacement_cost BETWEEN 12.99 AND 16.99;

-- 2. Select first_name and last_name from the actor table 
-- where the first_name is either 'Penelope', 'Nick', or 'Ed'.
SELECT first_name, last_name
FROM actor
WHERE first_name IN ('Penelope', 'Nick', 'Ed');

-- 3. Select all columns from the film table 
-- where rental_rate is one of (0.99, 2.99, 4.99) 
-- and replacement_cost is one of (12.99, 15.99, 28.99).
SELECT *
FROM film
WHERE rental_rate IN (0.99, 2.99, 4.99)
  AND replacement_cost IN (12.99, 15.99, 28.99);
