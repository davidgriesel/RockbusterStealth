-- Number of customers and total revenue by country
SELECT 	
	country.country, 
	COUNT (DISTINCT customer.customer_id) AS number_of_customers,
	SUM (payment.amount) AS total_payments 
FROM customer
JOIN address ON customer.address_id = address.address_id 
JOIN city ON address.city_id = city.city_id
JOIN country ON city.country_id = country.country_id
JOIN payment ON customer.customer_id = payment.customer_id
GROUP BY country.country	
ORDER BY number_of_customers DESC;	



-- Top 10 countries with most customers
SELECT 
	country.country_id, 
	country.country,
	COUNT(customer.customer_id) AS customer_count
FROM country
JOIN city ON country.country_id = city.country_id
JOIN address ON city.city_id = address.city_id
JOIN customer ON address.address_id = customer.address_id
GROUP BY country.country_id
ORDER BY customer_count DESC
LIMIT 10;



-- Top 10 countries with most revenue
SELECT 
	country.country_id,
	country.country,
	SUM (payment.amount) AS total_payments 
FROM customer
JOIN address ON customer.address_id = address.address_id 
JOIN city ON address.city_id = city.city_id
JOIN country ON city.country_id = country.country_id
JOIN payment ON customer.customer_id = payment.customer_id
GROUP BY country.country_id
ORDER BY total_payments DESC
LIMIT 10;