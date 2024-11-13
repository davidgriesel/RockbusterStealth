-- Summary stats on variables with numeric data type in film table
SELECT 
	'MIN' AS metric, 
	MIN(rental_duration) AS rental_duration, 
	MIN(rental_rate) AS rental_rate, 
	MIN(length) AS length, 
	MIN(replacement_cost) AS replacement_cost
FROM film
UNION ALL
SELECT 
	'MAX' AS metric, 
	MAX(rental_duration) AS rental_duration, 
	MAX(rental_rate) AS rental_rate, 
	MAX(length) AS length, 
	MAX(replacement_cost) AS replacement_cost
FROM film
UNION ALL
SELECT 
	'AVG' AS metric, 
	ROUND(AVG(rental_duration),2) AS rental_duration, 
	ROUND(AVG(rental_rate),2) AS rental_rate, 
	ROUND(AVG(length),2) AS length, 
	ROUND(AVG(replacement_cost),2) AS replacement_cost
FROM film
UNION ALL
SELECT 
	'COUNT' AS metric, 
	COUNT(rental_duration) AS rental_duration, 
	COUNT(rental_rate) AS rental_rate, 
	COUNT(length) AS length, 
	COUNT(replacement_cost) AS replacement_cost
FROM film
UNION ALL
SELECT 
	'COUNT_ROWS' AS metric, 
	COUNT(*) AS rental_duration, 
	COUNT(*) AS rental_rate, 
	COUNT(*) AS length, 
	COUNT(*) AS replacement_cost
FROM film;



-- Summary stats on rental_duration by rating
SELECT 
	rating, 
	ROUND(AVG(rental_duration),2) AS avg_rental_duration,
	MIN(rental_duration) AS min_rental_duration,
	MAX(rental_duration) AS max_rental_duration
FROM film
GROUP BY rating
ORDER BY rating;



-- Summary stats on rental_rate by rating
SELECT 
	rating, 
	ROUND(AVG(rental_rate),2) AS avg_rental_rate,
	MIN(rental_rate) AS min_rental_rate,
	MAX(rental_rate) AS max_rental_rate
FROM film
GROUP BY rating
ORDER BY rating;



-- Summary stats on length by rating
SELECT 
	rating, 
	ROUND(AVG(length),2) AS avg_length,
	MIN(length) AS min_length,
	MAX(length) AS max_length
FROM film
GROUP BY rating
ORDER BY rating;



-- Summary stats on replacement_cost by rating
SELECT 
	rating, 
	ROUND(AVG(replacement_cost),2) AS avg_replacement_cost,
	MIN(replacement_cost) AS min_replacement_cost,
	MAX(replacement_cost) AS max_replacement_cost
FROM film
GROUP BY rating
ORDER BY rating;