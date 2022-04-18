---------SORU 1 CEVAP
-- SELECT title, description FROM film;

------------------------------

---------SORU 2 CEVAP
-- SELECT * FROM film
-- WHERE length > 60 AND length < 75;

------------------------------

----------SORU 3 CEVAP
-- SELECT * FROM film
-- WHERE rental_rate = 0.99 AND replacement_cost = 12.99 OR replacemet_cost = 28.99;

------------------------------

----------SORU 4 CEVAP
-- SELECT first_name, last_name FROM customer
-- WHERE first_name = 'Mary';
------- Cevap : last_name = 'Smith'

-----------------------------
-----------SORU 5 CEVAP
-- SELECT * FROM film
-- WHERE length < 50 AND rental_rate != 2.99 OR length < 50 AND rental_rate != 4.99;