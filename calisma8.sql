------------ODEV 8 CEVAPLARI 

------- CEVAP 1
-- CREATE TABLE employee(
	-- id SERIAL PRIMARY KEY,
	-- name VARCHAR(50) NOT NULL, 
	-- birthday DATE,
	-- email VARCHAR(50)
-- ); 

------- CEVAP 2
-- insert into employee (name, email, birthday) values ('Sarina', 'smccomiskey0@yolasite.com', '1961-03-27');
-- insert into employee (name, email, birthday) values ('Korrie', 'kolenichev1@eventbrite.com', '1935-11-16');
-- insert into employee (name, email, birthday) values ('Angela', 'aheineking2@squidoo.com', '1915-06-11');
-- insert into employee (name, email, birthday) values ('Lyle', 'lkinney3@harvard.edu', '1999-10-02');
-- insert into employee (name, email, birthday) values ('Rosette', null, '1945-01-27');
-- insert into employee (name, email, birthday) values ('Glynis', 'gbradbeer5@last.fm', '1916-03-07');
-- insert into employee (name, email, birthday) values ('Elysha', 'eephgrave6@cargocollective.com', null);
-- insert into employee (name, email, birthday) values ('Aleece', 'aolliver7@hibu.com', '1917-09-30');
-- insert into employee (name, email, birthday) values ('Dell', 'dsugg8@etsy.com', '1915-12-20');
-- insert into employee (name, email, birthday) values ('Andriana', 'abirkenshaw9@icio.us', '1993-06-18');
-- insert into employee (name, email, birthday) values ('Virge', 'vdittsa@sourceforge.net', '1949-02-11');
-- insert into employee (name, email, birthday) values ('Dacia', null, null);
-- insert into employee (name, email, birthday) values ('Marjorie', null, '1949-01-19');
-- insert into employee (name, email, birthday) values ('Baird', 'bstubbleyd@chicagotribune.com', '1919-08-14');
-- insert into employee (name, email, birthday) values ('Tod', 'ttrippitte@desdev.cn', '1985-12-19');
-- insert into employee (name, email, birthday) values ('Hunfredo', 'hdebruynf@goodreads.com', '1958-11-25');
-- insert into employee (name, email, birthday) values ('Stanfield', 'scissellg@ucoz.com', '1932-03-06');
-- insert into employee (name, email, birthday) values ('Arleyne', 'aagerh@squarespace.com', '1980-03-22');
-- insert into employee (name, email, birthday) values ('Colline', 'cpiechai@360.cn', '1939-11-12');
-- insert into employee (name, email, birthday) values ('Shir', 'schickj@multiply.com', '1968-09-06');
-- insert into employee (name, email, birthday) values ('Lane', 'lbeauvaisk@boston.com', '1916-07-25');
-- insert into employee (name, email, birthday) values ('Dana', null, null);
-- insert into employee (name, email, birthday) values ('Nathanil', 'nmummerym@wordpress.com', '1987-08-31');
-- insert into employee (name, email, birthday) values ('Suellen', 'ssperringn@parallels.com', '1955-02-23');
-- insert into employee (name, email, birthday) values ('Noel', 'naxelbyo@ucoz.com', '1919-02-10');
-- insert into employee (name, email, birthday) values ('Bruce', 'bcullaghp@51.la', '1907-04-10');
-- insert into employee (name, email, birthday) values ('Wallas', 'whanalanq@miibeian.gov.cn', null);
-- insert into employee (name, email, birthday) values ('Mariel', 'mcasfordr@gravatar.com', '1912-03-20');
-- insert into employee (name, email, birthday) values ('Tobye', 'tbrusles@ibm.com', null);
-- insert into employee (name, email, birthday) values ('Tessie', 'tmettericket@shareasale.com', '1933-05-08');
-- insert into employee (name, email, birthday) values ('Darda', 'dwellingsu@deliciousdays.com', null);
-- insert into employee (name, email, birthday) values ('Forester', 'fjopsonv@tumblr.com', null);
-- insert into employee (name, email, birthday) values ('Mar', null, '1930-09-12');
-- insert into employee (name, email, birthday) values ('Nicolea', 'nsmithiesx@google.co.uk', '1992-10-24');
-- insert into employee (name, email, birthday) values ('Jaymee', 'jtafaniy@census.gov', null);
-- insert into employee (name, email, birthday) values ('Prescott', 'ppietz@sakura.ne.jp', '1912-08-27');
-- insert into employee (name, email, birthday) values ('Margy', 'marrighini10@yolasite.com', null);
-- insert into employee (name, email, birthday) values ('Northrup', 'nollenbuttel11@umn.edu', '1988-10-24');
-- insert into employee (name, email, birthday) values ('Ursula', null, '1913-12-28');
-- insert into employee (name, email, birthday) values ('Hubey', 'hleachman13@spiegel.de', '1976-08-21');
-- insert into employee (name, email, birthday) values ('Maridel', 'malcide14@cdc.gov', '1922-09-03');
-- insert into employee (name, email, birthday) values ('Lem', null, '1968-12-28');
-- insert into employee (name, email, birthday) values ('Delcine', 'dmckeand16@shutterfly.com', '1931-07-13');
-- insert into employee (name, email, birthday) values ('Ferdinanda', 'fhearons17@so-net.ne.jp', '1936-11-22');
-- insert into employee (name, email, birthday) values ('Kaine', 'kcaldicott18@state.tx.us', '1940-09-10');
-- insert into employee (name, email, birthday) values ('Cleon', 'cthiolier19@nifty.com', '1936-09-28');
-- insert into employee (name, email, birthday) values ('Robby', 'rpenburton1a@unicef.org', '1989-02-02');
-- insert into employee (name, email, birthday) values ('Jasmine', 'jkillingbeck1b@google.cn', '1984-06-27');
-- insert into employee (name, email, birthday) values ('Trace', 'tshankland1c@histats.com', '1927-09-27');
-- insert into employee (name, email, birthday) values ('Phip', 'phaslum1d@soundcloud.com', '1913-03-10');

-------- CEVAP 3  #### SORU FAZLA ACIK DEGILDI 2 ADET 'UPDATE' YAPTIM.
-- UPDATE employee
-- SET name = 'Kaan'
-- WHERE name = 'Lyle'
-- RETURNING *;

-- UPDATE employee
-- SET name = 'Kocak'
-- WHERE name LIKE 'Sa%'
-- RETURNING *

-------- CEVAP 4 #### SORU FAZLA ACIK DEGILDI 1 ADET 'DELETE' YAPTIM.
-- DELETE FROM employee
-- WHERE id = 11;

-- SELECT * FROM employee