-- 1. List all distinct values from the replacement_cost column in the film table.
SELECT DISTINCT replacement_cost
FROM film
ORDER BY replacement_cost;

-- 2. Count the number of distinct values in the replacement_cost column of the film table.
SELECT COUNT(DISTINCT replacement_cost) AS distinct_replacement_cost_count
FROM film;

-- 3. Count how many film titles start with 'T' and have a rating equal to 'G'.
SELECT COUNT(*) AS count_t_title_and_g_rating
FROM film
WHERE title LIKE 'T%' AND rating = 'G';

-- 4. Count how many countries have exactly 5 characters in their name.
SELECT COUNT(*) AS five_character_country_count
FROM country
WHERE LENGTH(country) = 5;

-- 5. Count how many city names end with the letter 'R' or 'r'.
SELECT COUNT(*) AS city_names_ending_with_r
FROM city
WHERE city ILIKE '%r';
