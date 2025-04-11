-- 1. List all unique first_name values from both actor and customer tables (no duplicates)
SELECT first_name FROM actor
UNION
SELECT first_name FROM customer;

-- 2. List first_name values that exist in both actor and customer tables (intersection, no duplicates)
SELECT first_name FROM actor
INTERSECT
SELECT first_name FROM customer;

-- 3. List first_name values that exist in actor but not in customer (no duplicates)
SELECT first_name FROM actor
EXCEPT
SELECT first_name FROM customer;

-- 4. List all first_name values from both tables including duplicates (UNION ALL)
SELECT first_name FROM actor
UNION ALL
SELECT first_name FROM customer;

-- 5. List all common first_name values including duplicates (simulate INTERSECT ALL using INNER JOIN)
SELECT a.first_name
FROM actor a
JOIN customer c ON a.first_name = c.first_name;

-- 6. List first_name values from actor that do not exist in customer (including duplicates)
-- Simulate EXCEPT ALL using LEFT JOIN
SELECT a.first_name
FROM actor a
LEFT JOIN customer c ON a.first_name = c.first_name
WHERE c.first_name IS NULL;
