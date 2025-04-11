-- 1. Group all films by their rating and count how many films fall under each rating.
SELECT rating, COUNT(*) AS film_count
FROM film
GROUP BY rating;

-- 2. Group films by replacement_cost and return only those groups where 
-- the number of films is greater than 50. Also, sort the result by film count descending.
SELECT replacement_cost, COUNT(*) AS film_count
FROM film
GROUP BY replacement_cost
HAVING COUNT(*) > 50
ORDER BY film_count DESC;

-- 3. Count how many customers exist for each store_id.
SELECT store_id, COUNT(*) AS customer_count
FROM customer
GROUP BY store_id;

-- 4. Group cities by country_id and return the country_id with the highest number of cities.
SELECT country_id, COUNT(*) AS city_count
FROM city
GROUP BY country_id
ORDER BY city_count DESC
LIMIT 1;
