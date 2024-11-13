-- Catalogue
SELECT 
	film.film_id,
	film.title,
	language.name AS language,
	film.release_year,
	category.name AS category,
	film.rating
FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
JOIN language ON film.language_id = language.language_id
GROUP BY 
	film.film_id,
	film.title,
	language.name,
	film.release_year,
	category.name,
	film.rating
ORDER BY film.film_id;



-- Count of distinct values per variable
SELECT
	COUNT (DISTINCT film.film_id) AS number_of_films,
	COUNT (DISTINCT language.name) AS number_of_languages,
	COUNT (DISTINCT film.release_year) AS number_of_release_years,
	COUNT (DISTINCT category.name) AS number_of_categories,
	COUNT (DISTINCT film.rating) AS number_of_ratings 
FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
JOIN language ON film.language_id = language.language_id;