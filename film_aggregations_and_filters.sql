-- 1. Get the average value of the rental_rate column from the film table.
SELECT AVG(rental_rate) AS average_rental_rate
FROM film;

-- 2. Count how many films have titles starting with the letter 'C'.
SELECT COUNT(*) AS films_starting_with_c
FROM film
WHERE title LIKE 'C%';

-- 3. Find the length of the longest film (in minutes) where rental_rate is 0.99.
SELECT MAX(length) AS longest_film_with_099_rate
FROM film
WHERE rental_rate = 0.99;

-- 4. Count how many distinct replacement_cost values exist 
-- among films longer than 150 minutes.
SELECT COUNT(DISTINCT replacement_cost) AS distinct_replacement_costs_over_150
FROM film
WHERE length > 150;
