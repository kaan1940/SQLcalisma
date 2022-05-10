--------------------  ODEV 12 CEVAPLARI

---------------- CEVAP 1
-- SELECT COUNT(*) FROM film
-- WHERE length >
-- (
-- 	SELECT AVG(length) FROM film
-- );

---------------- CEVAP 2
SELECT COUNT(*), rental_rate FROM film
WHERE rental_rate > ANY
(
SELECT rental_rate FROM film
WHERE )