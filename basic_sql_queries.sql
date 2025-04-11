-- 1. List all country names from the country table 
-- that start with 'A' and end with 'a' (case-sensitive).
SELECT country
FROM country
WHERE country LIKE 'A%a';

-- 2. List all country names that have at least 6 characters 
-- and end with the letter 'n'.
SELECT country
FROM country
WHERE LENGTH(country) >= 6 AND country LIKE '%n';

-- 3. List film titles from the film table that contain 
-- the letter 'T' (uppercase or lowercase) at least 4 times.
SELECT title
FROM film
WHERE LENGTH(LOWER(title)) - LENGTH(REPLACE(LOWER(title), 't', '')) >= 4;

-- 4. Select all columns from the film table where the title starts with 'C',
-- the length is greater than 90, and the rental_rate is 2.99.
SELECT *
FROM film
WHERE title LIKE 'C%' AND length > 90 AND rental_rate = 2.99;
