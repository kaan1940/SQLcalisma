------------------ SQL CALISMA BASTAN TEKRAR ----------------

-- SELECT * FROM actor;

-- SELECT first_name, last_name FROM actor;

-- SELECT * FROM film
-- WHERE replacement_cost = 12.99;

-- SELECT length, title FROM film
-- WHERE rental_rate = 0.99;

-- SELECT * FROM actor
-- WHERE first_name = 'Penelope';

-- SELECT * FROM film
-- WHERE length > 90 ;

-- SELECT * FROM film
-- WHERE rental_rate != 0.99;

-- SELECT first_name, last_name FROM actor
-- WHERE first_name = 'Penelope' AND last_name = 'Monroe';

-- SELECT first_name, last_name FROM actor
-- WHERE first_name = 'Penelope' OR first_name = 'Bob';

-- SELECT * FROM film
-- WHERE rental_rate = 4.99 AND length > 90;

-- SELECT * FROM film
-- WHERE rental_rate = 4.99 AND replacement_cost > 20 AND rental_duration = 3;

-- SELECT * FROM film
-- WHERE replacement_cost < 17 OR replacement_cost > 20;

-- SELECT * FROM film
-- WHERE NOT rental_rate = 4.99;

-- SELECT rental_rate, replacement_cost FROM film
-- WHERE NOT (rental_rate = 4.99 AND replacement_cost = 20.99);

-- SELECT rental_rate, replacement_cost FROM film
-- WHERE (rental_rate = 4.99 AND replacement_cost > 20.99);

-- SELECT first_name, last_name FROM actor ----------------- 'OR'DAN SONRA YENI KOSUL BASLIYORMUS GIBI DUSUN. --------------
-- WHERE first_name = 'Penelope' AND last_name = 'Monroe' OR first_name = 'Fay';

-- SELECT title, length FROM film
-- WHERE length > 90 AND length < 120;  ------------ AYNISI CEVAPLARI BETWEEN ILE DE ALABILIRIZ -------------

-- SELECT title, length FROM film 
-- WHERE length BETWEEN 90 AND 120;

-- SELECT title, length FROM film 
-- WHERE length NOT BETWEEN 90 AND 120;

-- SELECT rental_rate, replacement_cost FROM film
-- WHERE (rental_rate BETWEEN 2 AND 4) AND (replacement_cost BETWEEN 10 AND 20);

-- SELECT replacement_cost, title FROM film
-- WHERE replacement_cost IN(10.99, 12.99, 16.99);

-- SELECT first_name FROM customer
-- WHERE first_name LIKE 'A%n';

-- SELECT first_name FROM customer
-- WHERE first_name ILIKE 'd%n';

-- SELECT first_name FROM customer
-- WHERE first_name NOT ILIKE 'n%N';

-- SELECT title FROM film
-- WHERE title ILIKE '%t%t%t%t%';  ---------- BUYUK KUCUK FARKETMEKSIZIN 4 ADET 'T' OLMA KOSULU ------------

-- SELECT DISTINCT rental_rate, replacement_cost FROM film;

-- SELECT COUNT(*) FROM actor
-- WHERE first_name = 'Penelope';

-- SELECT COUNT(*) FROM actor;

-- SELECT COUNT(DISTINCT first_name) FROM actor; ---- DISTINCT ILE first_name'deki FARKLI VERILER EKRANA VERILIR. -----
                                                 ---- COUNT EKLEYINCE BU FARKLI DEGERLERIN ADEDI EKRANA YAZILIR. -----

-- SELECT COUNT(DISTINCT length) FROM film;

-- SELECT * FROM film
-- WHERE (title ILIKE '%a%a%') AND (length > 100) AND (replacement_cost > 15 AND replacement_cost < 25) AND (rental_rate = 2.99);

-- SELECT COUNT(DISTINCT length) FROM film
-- WHERE title LIKE 'T%';

-- SELECT title, rental_rate, length FROM film
-- ORDER BY rental_rate ASC, length DESC;

-- SELECT title, rating, length FROM film
-- WHERE rating = 'G'
-- ORDER BY length DESC;  -------- ORDER BY ANAHTAR KELIMESI WHERE KOSULLARINDAN SONRA GELIR. ----------

-- SELECT * FROM film
-- WHERE rental_rate = 4.99
-- ORDER BY length DESC
-- LIMIT 20;

-- SELECT * FROM film
-- WHERE replacement_cost = 14.99 AND rental_rate = 0.99
-- ORDER BY lengtH DESC
-- OFFSET 3
-- LIMIT 1;   --------- WHERE KOSULUNU SAGLAYIP LENGTH'I EN UZUN 4. FILMI EKRANA YAZDIRIRIZ ---------

---------- AGGREGATE FOKSIYONLAR --> COUNT(ADET VERİR1), MAX(MAXIMUM), MIN(MINIMUM), AVG(ORTALAMA)----------

-- SELECT rental_rate, length FROM film
-- WHERE rental_rate IN(0.99, 2.99)
-- ORDER BY length DESC;  ----------- RENTAL_RATE 0.99 VE 2.99 OLAN VERILER ARASINDA MAX LENGTH UZUNLUGUNA SAHIP DEGERI YAZDIRACAGIZ BIR ALT SORGUDA -------

-- SELECT MAX(length) FROM film
-- WHERE rental_rate IN(0.99, 2.99);

-- SELECT AVG(length), MIN(replacement_cost), SUM(rental_rate) FROM film;

--SELECT ROUND(AVG(length),3) FROM film;   -------- ROUND ANAHTAR KELIMESI BURADA DUYARLILIGI 3 KARAKTERE INDIRDI.(YANI VIRGUL'DEN SONRAKI SAYI ADEDI 3 OLDU.)

-- SELECT rental_rate, MAX(length) FROM film
-- GROUP BY rental_rate;

-- SELECT replacement_cost, MIN(length) FROM film
-- GROUP BY replacement_cost;

-- SELECT replacement_cost, rental_rate, MIN(length) FROM film
-- GROUP BY replacement_cost, rental_rate
-- ORDER BY replacement_cost ASC, rental_rate DESC;  -----VERILERI ONCE GRUPLAYIP GRUPLADIGIMIZ VERILERI SIRALADIGIMIZ ICIN GROUP BY, ORDER BY ONCE KULLANILIR.
                                                     ----- LIMIT ANAHTAR KELIMESI GENELDE EN SONDA KULLANILIR. ---------

-- SELECT rental_rate, COUNT(*) FROM film
-- GROUP BY rental_rate
-- HAVING COUNT(*) > 325;

-- SELECT rental_rate, COUNT(*) FROM film
-- WHERE rental_rate != 2.99
-- GROUP BY rental_rate;

-- SELECT staff_id, COUNT(*) FROM payment
-- GROUP BY staff_id  ---- CONCAT ANAHTAR KELIMESI FIRST_NAME VE LAST_NAME SUTUNLARINI BIRLESTIRDI. ----
-- HAVING COUNT(*) > 7300;

-- SELECT customer_id, SUM(amount) FROM payment
-- GROUP BY customer_id
-- HAVING SUM(amount) > 100
-- ORDER BY SUM(amount) ASC;

-- SELECT first_name AS "kisinin ismi" , last_name AS "kisinin soyismi" FROM actor;

-- SELECT CONCAT(first_name, ' ', last_name) AS "Isim ve Soyisim" FROM actor; -- CONCAT ANAHTAR KELIMESI FIRST_NAME VE LAST_NAME SUTUNLARINI BIRLESTIRDI. --