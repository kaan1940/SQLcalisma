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

-- CREATE TABLE s_book(     -------- BOOK TABLOSU OLUSTURULDU VE FOREIGN KEY SAYESINDE AUTHOR'UN PRIMARY KEY OLAN ID SUTUNUNA REFERANS VERILDI. --------
-- 	id SERIAL PRIMARY KEY,
-- 	title VARCHAR(100) NOT NULL,
-- 	page_number INTEGER NOT NULL,
-- 	author_id INTEGER REFERENCES s_author(id)
-- );

----------- BURADA S_BOOK TABLOSUNA VERI GIRISI YAPILDI VE SILINDI. -----------

-- SELECT * FROM s_book;

-- SELECT * FROM s_book
-- WHERE author_id = 1;

-- SELECT * FROM s_book
-- JOIN s_author ON s_book.author_id = s_author.id
-- ORDER BY author_id;

----------- TABLO OLUSTURURKEN KULLANDIGIMIZ VERI TIPLERINI SIMDI BURADA ORNEKLENDIRECEGIZ. -----------

-- CREATE TABLE s_test(
-- 	real_type REAL,
-- 	double_type DOUBLE PRECISION,
-- 	numerıc_type NUMERIC
-- );

-- INSERT INTO s_test
-- VALUES
-- 	(1.12345678912345678912,
-- 	 1.12345678912345678912,
-- 	 1.12345678912345678912
-- );

-- SELECT * FROM s_test;

-- SELECT ('LOREM'::CHAR(10));

-- SELECT ('MERHABA NASILSIN LOREM'::VARCHAR(10));

----- TEXT KISITLAMASINDA BIR SINIRLAMA YOK, GIRDIGIM KARAKTERIN TAMAMINI ALIR.  ---------

-- SELECT ('yes'::BOOLEAN);
-- SELECT ('no'::BOOLEAN);
-- SELECT ('on'::BOOLEAN);
-- SELECT ('off'::BOOLEAN);
-- SELECT ('0'::BOOLEAN);
-- SELECT ('1'::BOOLEAN);
-- SELECT ('true'::BOOLEAN);
-- SELECT ('false'::BOOLEAN);

-- SELECT ('1980-11-17'::DATE);
-- SELECT ('Dec 17 1980'::DATE);
-- SELECT ('1980 Dec 17');   ------ BU SORGUYU DATE OLARAK BELIRTMEDIGIMIZ ICIN VERI TIPI TEXT OLARAK AYARLANIR VE TEXT SEKLINDE SONUCU VERIR. ----------

-- SELECT('03:44'::TIME);
--SELECT('03:44 AM'::TIME);
--SELECT('03:44 PM'::TIME);

-- SELECT('1980 Dec 17 15:38:11'::TIMESTAMP);   ------ TIMESTAMP ANAHTAR KELIMESI SAAT VE TARIHI AYNI ANDA GOSTERMEMIZI SAGLAR. -----------

----------- CONSTRAINT(KISITLAMA) ORNEKLERI --------------

--CREATE TABLE s_users(
--	id SERIAL PRIMARY KEY,
--	username VARCHAR(20),
--	email VARCHAR(50),
--	age INTEGER
--);

-- SELECT * FROM s_users;

-- INSERT INTO s_users(username, email, age)
-- VALUES
--	('tester', 'tester@gmail.com', 35);

-- SELECT * FROM s_users;

-- INSERT INTO s_users(email, age)
-- VALUES
--	('gamer@gmail.com', 23);

-- SELECT * FROM s_users;

----------- SIMDI TABLOMUZ OLSTURULDU VE BIZ BURADA NULL OLAN USERNAME ISTEMIYORUZ.O YUZDEN USERNAME SUTUNUNA NOT NULL KISITLAMASINI EKLEYECEGIZ. ----

-- ALTER TABLE s_users ------ ALTER KOMUTUYLA TABLO UZERINDE DEGISIKLIK YAPABILIYORUZ AMA BURADA BU KOMUT DIZININI CALISTIRINCA HATA ALIRIZ. ------
-- ALTER COLUMN username     ----- NEDENI DE "NULL" OLARAK VERIMIZ VAR VE BU YUZDEN NOT NULL KISITLAMASINI EKLEYEMIYORUZ. ------
-- SET NOT NULL;                   -----BIR SONRAKI ADIM DA NULL OLAN SATIRI SILIP TEKRAR NOT NULL KISITLAMASINI EKLEYECEGIZ. -----

-- DELETE FROM s_users
-- WHERE username = 'null';  ----- BU KOMUT ISTEDIGIMIZ SEYI SILMEZ '=' YERINE 'IS' KULLANMALIYIZ. CALISIR AMA SILMEZ -------

-- DELETE FROM s_users
-- WHERE username IS null;

--SELECT * FROM s_users;

-- ALTER TABLE s_users
-- ALTER COLUMN username
-- SET NOT NULL;

-- INSERT INTO s_users(email, age) -- BURADA HATA ALIRIZ.CUNKU NOT NULL KISITLAMASI EKLEDIK VE BURADA USERNAME SUTUNUNA VERI GIRMEYEREK NULL IFADE OLUSTURURUZ.
-- VALUES
--	('gamer@gmail.com', 23);

-- SELECT * FROM s_users;

-- INSERT INTO s_users(username, email, age)
-- VALUES
-- 	('tester', 'tester@gmail.com', 44);

-- SELECT * FROM s_users;

-- ALTER TABLE s_users ----- UNIQUE (YANI AYNI) VERILER OLDUGU ICIN BU KOD BLOGUNU CALISTIRINCA HATA ALIRIZ. ------
-- ADD UNIQUE(email);

-- UPDATE s_users   --------- UNIQUE VERI UPDATE ANAHTAR KELIMESI ILE GUNCELLENDI. HATA KALDIRILDI.SIMDI UNIQUE KISITLAMASI GIRILECEK. -----
-- SET email = 'tester2@gmail.com'
-- WHERE id = 4;

-- SELECT * FROM s_users;

-- ALTER TABLE s_users
-- ADD UNIQUE(email);

-- INSERT INTO s_users(username, email, age) ------ UNIQUE VERI GIRMEYE CALISTIK HATA ALIRIZ. --------
-- VALUES
--	('tester3', 'tester@gmail.com', 55);

-- INSERT INTO s_users(username, email, age)
-- VALUES
--	('gamer3', 'gamer3@gmail.com', -22);

-- SELECT * FROM s_users;

-- ALTER TABLE s_users      -- HATA VERIR.CUNKU 18'DEN KUCUK 'AGE' DEGERI VAR. BU DEGERI SILIP CHECK KISITLAMSINI EKLEYECEGIZ. -----
-- ADD CHECK (age > 18);

-- DELETE FROM s_users
-- WHERE id = 6;

-- ALTER TABLE s_users    ----- 'AGE' 18'DEN BUYUK KISITLAMASINI TABLOYA EKLEDIK.SIMDI DE 18 DEN KUCUK VERI GIRMEYE CALISALIM. ----------
-- ADD CHECK (age > 18);

-- INSERT INTO s_users(username, email, age) ----- BU KOMUT SATIRLARINI CALISTIRINCA HATA ALIRIZ CUNKU 'AGE' 18'DEN BUYUK KISITLAMAMIZ VAR. --------
-- VALUES
--	('gamer4', 'gamer4@gmail.com', -27);

-- INSERT INTO s_users(username, email, age) ----- BU KOMUT SATIRLARI CALISIR . --------
-- VALUES
--	('gamer4', 'gamer4@gmail.com', +27);

-- SELECT * FROM s_users;

------- SIMDI DE YENI BIR TABLO OLUSTURURKEN CHECK KISITLAMASI NASIL EKLENIR UYGULAYACAGIZ. --------

-- CREATE TABLE s_products(
-- 	products_no INTEGER,
--	name TEXT,
--	price NUMERIC CHECK (price > 0),  ----- BU SATIR DA PRICE(YANI FIYAT) SIFIRDAN BUYUK OLMALI KISITLAMASINI EKLEDIK. ------
--	discounted_price NUMERIC CHECK (discounted_price > 0), -- BU SATIR DA DISCOUNTED_PRICE(YANI INDIRIMLI FIYAT) SIFIRDAN BUYUK OLMALI KISITLAMASINI KOYDUK.
--	CHECK (price > discounted_price) ----- BU SATIR DA PRICE , DISCOUNTED_PRICE'DAN BUYUK  OLMALI KISITLAMASINI EKLEDIK. ------
--);

-- SELECT * FROM s_products;

-- INSERT INTO s_products(products_no, name, price, discounted_price) --- HATA ALIRIZ CUNKU PRICE BUYUKTUR DISCOUNTED_PRICE'DAN KISITLAMASI EKLEDIK. ----
--VALUES                                                                 ---- AMA BURADA PRICE = 10, DISCOUNTED_PRICE = 12 VERILEINI GIRDIK. ---- HATA VERIR.
--	(1, 'test product' , 10, 12);
	
-- INSERT INTO s_products(products_no, name, price, discounted_price) --- KISITLAMALARA UYUYOR BU KOD SATIRI CALISIR. ------
-- VALUES
-- 	(1, 'test product' , 12, 10);

--SELECT * FROM s_products;

----- SIMDI S_PRODUCTS VE S_USERS TABLOLARIYLA ISIMIZ KALMADI SILIYORUZ. -----

-- DROP TABLE IF EXISTS s_products;

-- DROP TABLE IF EXISTS s_users;

----- SIMDI JOIN YAPILARINI ORNEKLENDIRECEGIZ. ------

-- SELECT title, first_name, last_name FROM s_book
-- INNER JOIN s_author ON s_book.author_id = s_author.id;

-- SELECT title, first_name, last_name FROM s_author -- BU VE BIR ONCEKI KOD SATIRALARI AYNI ISLEMI YAPAR.NEDENI INNER JOIN SIMETRIK YAPIYA SAHIP OLDUGU ICIN. 
-- JOIN s_book ON s_book.author_id = s_author.id;

-- SELECT first_name, last_name, title FROM s_author ---- BURADA LEFT TABLE S_AUTHOR OLUR.O YUZDEN S_AUTHOR'UN TUM VERILERINI SANAL TABLOYA GETIRIR. -----
-- LEFT JOIN s_book ON s_book.author_id = s_author.id;   ----- KITABI OLMAYAN YAZARLARIN KITAP ISMI KISMINDA 'NULL' SEKLINDE YAZAR. -----

---- SELECT first_name, last_name, title FROM s_book  ----- BURADA LEFT TABLE S_BOOK OLUR.O YUZDEN S_BOOK'UN TUM VERILERINI SANAL TABLOYA GETIRIR. -----
--- LEFT JOIN s_author ON s_book.author_id = s_author.id; ----- KITABI OLMAYAN YAZARLARIN YAZAR ISMI KISMINDA 'NULL' SEKLINDE YAZAR. -----
                                                          ----- AMA FOREIGN KEY YAPISINDAN DOLAYI 'NULL' ISMINDE YAZAR ISIMLERI OLMAZ. ----
-- INSERT INTO s_products(title, page_number, author_id)
-- VALUES                              ---- BU KOD SATIRI CALISMAZ CUNKU FOREIGN KEY SUTUNU PRIMARY KEY SUTUNUNA REFERANS OLDU. -------
--	('Gulun Adi', 466, 44);    ----- BU YUZDEN AUTHOR_ID'SI 44 OLAN VERI, AUTHOR TABLOSUNDA ID OLARAK 44 OLMADIGI ICIN REFERAN OLAMIYOR VE HATA VERIYOR. ----
								----- SIMDI BU FOREIGN KEY VE PRIMARY KEY YAPISINDAN BIR KURTULALIM. ------

-- ALTER TABLE s_book
-- DROP CONSTRAINT s_book_author_id_fkey;  ----- BURADA FOREIGN KEY YAPISINDAN KURTULDUK. ------

-- INSERT INTO s_book(title, page_number, author_id)  ----- VERILER EKLENDI. ----
-- VALUES
-- 	('Gulun Adi', 466, 44),
--	('Yapay Zeka', 108, 55);

-- SELECT * FROM s_book;

-- SELECT title, first_name, last_name FROM s_book  ---- SIMDI SON GIRDIGIMIZ VERILERDE YAZAR ISMI OLMADIGI ICIN YAZAR ISMINDE 'NULL' VERILERINI GORDUK. ---
-- LEFT JOIN s_author ON s_book.author_id = s_author.id;   ---- BURADA S_BOOK LEFT TABLE OLDU VE TUM VERILERI GELDI. ----

-- SELECT first_name, last_name, title FROM s_author -- BURADA INNER JOIN ANAHTAR KELIMESIYLE UYGULADIGIMIZ SATIRDAKI KOMUT SONUCLARIYLA AYNI SONUCU VERIR. --
-- LEFT JOIN s_book ON s_book.author_id = s_author.id     ------ CUNKU WHERE ILE NOT NULL ŞARTINI KOYUYORUZ VE NULL VERISINE SAHIP SATIRLAR GELMIYOR. ----
-- WHERE s_book.id IS NOT NULL
-- ORDER BY title ASC;

-- SELECT first_name, last_name, title FROM s_book --- BURADA RIGHT JOIN AUTHOR TABLOSUNA(TABLO 2'YE) ONEM VERIR. RIGHT JOIN ILE LEFT JOIN AYNI ISLEVI GORUR.--
-- RIGHT JOIN s_author ON s_book.author_id = s_author.id; -- SADECE BIZIM SENARYOMUZDA NE ISTEDIGIMIZ ONEMLI. ONA GORE IKISINDEN BIRINI SECIP KULLANACAGIZ. --

-- SELECT title, first_name, last_name FROM s_book  --- FULL JOIN ANAHTAR KELIMESIYLE IKI TABLODAN DA TUM VERILER ALINIR. ----
-- FULL JOIN s_author ON s_book.author_id = s_author.id; -- TALOLARIN YERI DEGISIP CALISTIRILINCADA AYNI SONUCU VERIR CUNKU FULL JOIN, INNER JOIN GIBI SIMETRIK

-- SELECT * FROM s_book
-- FULL JOIN s_author ON s_book.author_id = s_author.id;

-- SELECT * FROM s_book    --- BU KOD SATIRI INNER JOIN ILE AYNI SONUCU VERIR. CUNKU WHERE KOSULU ILE 'NULL' OLAN VERILERI SANAL TABLOYA EKLEMEDIK. ----
-- FULL JOIN s_author ON s_book.author_id = s_author.id
-- WHERE (s_book.id IS NOT NULL AND s_author.id IS NOT NULL);

-- SELECT * FROM s_book    --- BU KOD SATIRI DA ORTAK OLMAYAN (YANI 'NULL' OLAN VERILERI) VERILERI GOSTERIR. -----
-- FULL JOIN s_author ON s_book.author_id = s_author.id
-- WHERE (s_book.id IS NULL OR s_author.id IS NULL);

---- SU AN YAPACAGIMIZ CALISMA DA 'UNION', 'INTERSECT', 'EXCEPT' ANAHTAR KELIMELERINI ORNEKLENDIRECEGIZ. -----
---- BIRDEN FAZLA 'SELECT' SORGUSU YAPTIGIMIZ DA BUNLARI AYNI SANAL TABLODA BIRLESTIRMEK ISTERSEK 'UNION', KESISIMLERINI ISTERSEK 'INTERSECT', 
          --- ILK SORGUDA OLAN ANCAK IKINCI SORGUDA OLMAYAN VERILERI GORMEK ISTERSEK 'EXCEPT' ANAHTAR KELIMELERI KULLANILIR. ----
-- (		  
-- SELECT * FROM s_book --- BURADA HEM SAYFA NUMARASI(PAGE_NUMBER) HEMDE KITAP ISIMLERINE(TITLE) GORE SIRALAYIP 'UNION' ILE AYNI SANAL TABLODA BIRLESTIRDIK. --
-- ORDER BY page_number DESC
-- LIMIT 5
-- )
-- UNION
-- (
-- SELECT * FROM s_BOOK
-- ORDER BY title ASC
-- LIMIT 5
-- );

-- BIR ONCE KI SORGU SATIRIN DA 10 ADET VERI OLACAKKEN BIR VERI EKSIK.O VERI IKI TABLODA DA OLDUGU ICIN (YANI KESISIM VERISI OLDUGU ICIN) BIR DEFA YAZILIYOR. -
 ------- SIMDI O VERIYI IKI DEFA GOSTEREBILMEK ICIN 'UNION ALL' ANAHTAR KELIMESI KULLANACAGIZ. -----
-- (		  
-- SELECT * FROM s_book    ---- 'CORPSE BRIDE' ISIMLI KITAP (YANI KESISIM KITABI) BURADA IKI DEFA GORUNTULENDI SANAL TABLODA VE 10 ADET VERI OLDU. ---
-- ORDER BY page_number DESC
-- LIMIT 5
-- )
-- UNION ALL
-- (
-- SELECT * FROM s_BOOK
-- ORDER BY title ASC
-- LIMIT 5
-- );

-- (
-- SELECT id, email FROM s_author   --- 'UNION' BURADA IKI SORGU SONUCUNU BIRLESTIRDI. SUTUN ISIMLERINI ILK 'SELECT' SORGUSUNDAN ALDI. -----
-- )
-- UNION
-- (
-- SELECT id, title FROM s_book
-- );

-- (
-- SELECT id, email, first_name FROM s_author --- BU SORGUDA HATA ALIRIZ.NEDENI 'UNION' ANAHTAR KELIMESINI KULLANIRKEN HER IKI SORGU ICIN DE SECTIGIMIZ
-- )                                                                --- SUTUN SAYILARI BIRBIRINE ESIT OLMALI. --------
-- UNION
-- (
-- SELECT id, title FROM s_book
-- );

-- (
-- SELECT id, email FROM s_author --- BU SORGUDA DA HATA ALIRIZ.NEDENI IKI SORGUDA DA SECTIGIMIZ SUTUNLARIN VERI TIPLERI BIRBIRIYLE UYUMLU DEGIL. --
-- )                           ---- 'ID' SUTUNLARI 'INTEGER' VERI TIPI UYUMLU AMA 'EMAIL' SUTUNU 'VARCHAR', 'PAGE_NUMBER' ISE 'INTEGER' VERI TIPINE SAHIP. -- 
-- UNION                            ---- BU YUZDEN 'EMAIL' ILE 'PAGE_NUMBER' SUTUNLARININ VERI TIPLERI BIRBIRINE UYUMLU DEGIL VE CALISTIRINCA HATA ALIRIZ. ----
-- (
-- SELECT id, page_number FROM s_book
-- );

-- (		  
-- SELECT * FROM s_book           --- BURADA IKI 'SELECT' SORGUSUNUN KESISIMINI GOSTERIR. --------
-- ORDER BY page_number DESC
-- LIMIT 5
-- )
-- INTERSECT
-- (
-- SELECT * FROM s_BOOK
-- ORDER BY title ASC
-- LIMIT 5
-- );

-- (		  
-- SELECT * FROM s_book    ----- BURADA DA ILK SORGUDA OLUP IKINCI SORGUDA OLMAYAN VERILERI VERIR BIZE. -----
-- ORDER BY page_number DESC
-- LIMIT 5
-- )
-- EXCEPT
-- (
-- SELECT * FROM s_BOOK
-- ORDER BY title ASC
-- LIMIT 5
-- );

-- SELECT * FROM s_book;