-- 1. Group all films by their rating.
SELECT rating, COUNT(*) AS film_count
FROM film
GROUP BY rating;

-- 2. Group films by replacement_cost and list only those replacement_cost values
-- that have more than 50 films, along with the corresponding film counts.
SELECT replacement_cost, COUNT(*) AS film_count
FROM film
GROUP BY replacement_cost
HAVING COUNT(*) > 50
ORDER BY film_count DESC;

-- 3. Count the number of customers for each store_id.
SELECT store_id, COUNT(*) AS customer_count
FROM customer
GROUP BY store_id;

-- 4. Group cities by country_id and find the country_id with the highest number of cities.
SELECT country_id, COUNT(*) AS city_count
FROM city
GROUP BY country_id
ORDER BY city_count DESC
LIMIT 1;
