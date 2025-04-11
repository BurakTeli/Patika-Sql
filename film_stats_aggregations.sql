-- 1. List the top 5 longest films (by length) where the title ends with the letter 'n'.
SELECT *
FROM film
WHERE title LIKE '%n'
ORDER BY length DESC
LIMIT 5;

-- 2. List the next 5 shortest films (6th to 10th) where the title ends with the letter 'n'.
SELECT *
FROM film
WHERE title LIKE '%n'
ORDER BY length ASC
OFFSET 5
LIMIT 5;

-- 3. List the top 4 customers from store_id = 1, ordered by last_name in descending order.
SELECT *
FROM customer
WHERE store_id = 1
ORDER BY last_name DESC
LIMIT 4;
