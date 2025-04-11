-- 1. List all unique first_name values from both actor and customer tables (no duplicates)
SELECT first_name FROM actor
UNION
SELECT first_name FROM customer;

-- 2. List first_name values that appear in both actor and customer tables (intersection)
SELECT first_name FROM actor
INTERSECT
SELECT first_name FROM customer;

-- 3. List first_name values that appear in actor but not in customer (difference)
SELECT first_name FROM actor
EXCEPT
SELECT first_name FROM customer;

-- 4. List all first_name values from both actor and customer tables (with duplicates)
SELECT first_name FROM actor
UNION ALL
SELECT first_name FROM customer;

-- 5. List all common first_name values including duplicates (intersection with duplicates not directly supported in PostgreSQL)
-- Workaround: Use INNER JOIN with subqueries
SELECT a.first_name
FROM (SELECT first_name FROM actor) a
JOIN (SELECT first_name FROM customer) c ON a.first_name = c.first_name;

-- 6. List all first_name values that exist in actor but not in customer (with duplicates)
-- PostgreSQL does not support EXCEPT ALL, so simulate with LEFT JOIN
SELECT a.first_name
FROM actor a
LEFT JOIN customer c ON a.first_name = c.first_name
WHERE c.first_name IS NULL;
