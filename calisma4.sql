-----'DISTINCT VE COUNT' VIDEO CALISMA NOTLARI
-- SELECT DISTINCT replacement_cost from film;

-- SELECT DISTINCT rental_rate, replacement_cost FROM film;   --burada aynı verilerin tekrar ettiğini görürüz ama aslında biz sorguladığımıoz iki sütunu tek bir sütun gibi düşüneceğiz.Ve bu şekilde tekrar etmediğini göreceğiz.

--SELECT COUNT(*) FROM actor   --Burada ki 'COUNT' altta ki 'WHERE' koşulunu sağlayan verilerin adedini söyler.
--WHERE first_name LIKE 'A%';

-- SELECT COUNT(first_name)FROM actor
-- WHERE first_name = 'Penelope';

-- SELECT COUNT(DISTINCT length) FROM film;   --burada da film tablosunda length sütununda birbirinden farklı kaç tane değerin oldugunu bize soyler.


---------------------------------------------------------------------------------------------------


-------- ODEV CEVAPLARI

-----------CEVAP 1
-- SELECT DISTINCT replacement_cost FROM film;

-----------CEVAP 2
-- SELECT COUNT(DISTINCT replacement_cost) FROM film;

-----------CEVAP 3
-- SELECT COUNT(*) FROM film
-- WHERE title LIKE'T%' AND rating = 'G';

-----------CEVAP 4
-- SELECT COUNT(*) FROM country
-- WHERE country LIKE '_____';

-----------CEVAP 5
-- SELECT COUNT(*) FROM city
-- WHERE city LIKE '%[Rr]'