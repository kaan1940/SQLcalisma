----------- ODEV 6 CEVAPLARI

----------- CEVAP 1
-- SELECT rating FROM film
-- GROUP BY rating;

----------- CEVAP 2
-- SELECT replacement_cost, COUNT(*) FROM film
-- GROUP BY replacement_cost
-- HAVING COUNT(*) > 50 ;

----------- CEVAP 3
-- SELECT store_id , COUNT(*) FROM customer
-- GROUP BY store_id

-----------  CEVAP 4 
-- SELECT country_id, COUNT(city) FROM city
-- GROUP BY country_id
-- ORDER BY COUNT(city) DESC
-- LIMIT 1;