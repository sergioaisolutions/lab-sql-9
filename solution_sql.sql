USE sakila;

-- EXERCISE 1

SELECT COUNT(DISTINCT last_name) AS total_last_names_unique FROM actor;

-- EXERCISE 2

SELECT *, 

CASE
	WHEN WEEKDAY(CONVERT(rental_date, DATE)) > 05 THEN 'WEEKEND'
	ELSE 'WORKDAY' 
END AS 'day_type'

FROM rental;

-- EXERCISE 3

SELECT film_id, title FROM film
WHERE title LIKE '%ARMAGEDDON%';

-- EXERCISE 4

SELECT film_id, title, length FROM film
ORDER BY length DESC;

-- EXERCISE 5

SELECT title, special_features FROM film
WHERE special_features LIKE '%%Behind the Scenes%%';

-- EXERCISE 6

SELECT rating, AVG(length) AS mean_duration FROM film
GROUP BY rating
HAVING mean_duration > 120;

-- EXERCISE 7

SELECT title, length,

CASE
	WHEN length > 100 THEN 'long'
	WHEN length > 60 THEN 'medium'
	ELSE 'short'
END AS length_rank

FROM film

WHERE length IS NOT NULL AND length <> 0
ORDER BY length DESC;