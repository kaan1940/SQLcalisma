--------------------- SQL CALISMA VIDEO TEKRAR DEVAM ------------------

--CREATE TABLE s_author(
--	id SERIAL PRIMARY KEY,
--	first_name VARCHAR(50) NOT NULL,
--	last_name VARCHAR(50) NOT NULL,
--	email VARCHAR(50),
--	birthday DATE
-- );

-- SELECT * FROM s_author;

-- insert into s_author (first_name, last_name, email, birthday) values ('Rita', 'Gooly', 'rgooly0@howstuffworks.com', '1941-11-13');
-- insert into s_author (first_name, last_name, email, birthday) values ('Hertha', 'Pratte', 'hpratte1@gmpg.org', '1940-11-20');
-- insert into s_author (first_name, last_name, email, birthday) values ('Roxana', 'Gherardesci', 'rgherardesci2@dailymail.co.uk', null);
-- insert into s_author (first_name, last_name, email, birthday) values ('Hedwig', 'Sewall', 'hsewall3@theguardian.com', '1947-03-23');
-- insert into s_author (first_name, last_name, email, birthday) values ('Nananne', 'Berridge', 'nberridge4@npr.org', '1925-08-10');

-- SELECT * FROM s_author;

--CREATE TABLE s_author2 (LIKE s_author);    ------ BU SORGU SAYESINDE S_AUTHOR2 ISMINDE VE SABLONU S_AUTHOR İLE AYNI OLAN TABLO OLUSTURDUK. ------

-- SELECT * FROM s_author2;

-- INSERT INTO s_author2   ------- BU SORGU SAYESINDE S_AUTHOR TABLOSUNDAN ROXANA ISIMLI VERININ TUM VERILERINI S_AUTHOR2 TABLOSUNA KOPYALADIK. -------
-- SELECT * FROM s_author
-- WHERE first_name = 'Roxana';

-- SELECT * FROM s_author2;

-- CREATE TABLE s_author3 AS    ------ BU SORGU ILE S_AUTHOR3 TABLOSUNU OLUSTURDUK VE 'AS' ANAHTAR KELIMESI YARDIMIYLA S_AUTHOR TABLOSUNUN TUM VERILERINI ----
-- SELECT * FROM s_author;                       --------- S_AUTHOR3 TABLOSUNA KOPYALADIK. -------------

-- SELECT * FROM s_author3;

-- DROP TABLE s_author2;

-- DROP TABLE IF EXISTS s_author3;  ------------ BU VE BIR ONCEKI SORGU SAYESINDE S_AUTHOR2 VE S_AUTHOR3 TABLOLARINI SILDIK. ------------

------------ BURADA 100 TANE YENI VERI GIRISI YAPTIK MOCKAROO SITESINDEN ve SORGU TABLOSUNU CALISTIRDIKTAN SONRA SILDIM. -----------

-- SELECT * FROM s_author;

-- UPDATE s_author     --------ID'si 10 OLAN KISININ VERILERI GUNCELLENDI FAKAT GUNCELLENEN VERILER TABLONUN EN SON SATIRINDA GORUNUR. -------
-- SET first_name = 'Kaan',
-- 	last_name = 'Bal',
-- 	email = 'kaan@bal.com'
-- WHERE id = 10;

-- UPDATE s_author
-- SET first_name = 'xxx',
-- 	last_name = 'yyy'
--WHERE first_name ILIKE 'v%';

-- SELECT * FROM s_author;

-- UPDATE s_author  ---------RETURNING ANAHTAR KELIMESI GUNCELLEDIGIMIZ VERIYI DIREK SONUC OLARAK GOSTERIR. ---------
-- SET last_name = 'UPDATE'
-- WHERE first_name = 'Ky'
-- RETURNING * ;

-- DELETE FROM s_author
-- WHERE id = 6

-- DELETE FROM s_author
-- WHERE id > 11
-- RETURNING *;

-- SELECT * FROM s_author;