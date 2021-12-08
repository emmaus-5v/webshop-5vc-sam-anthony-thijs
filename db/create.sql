--
-- create tables
--
/*tabel goed*/

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  diersoort TEXT,
  kleur TEXT,
  ras TEXT,
  geslacht INTEGER,
  gewicht NUMERIC(10, 2),
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2)
);

/*
DROP TABLE IF EXISTS dieren;
CREATE TABLE dieren (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  diersoort TEXT,
  kleur TEXT,
  ras TEXT,
  geslacht INTEGER,
  gewicht NUMERIC(10, 2),
  product_id INTEGER
);*/

DROP TABLE IF EXISTS accesoires;
CREATE TABLE accesoires (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  naam TEXT,
  kleur TEXT,
  soort INTEGER,
  product_id INTEGER
);

/*hoeveelheid in kg*/
DROP TABLE IF EXISTS voedsel;
CREATE TABLE voedsel (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  voedselsoort INTEGER,
  merk TEXT,
  hoeveelheid INTEGER,
  product_id INTEGER
);

/*DROP TABLE IF EXISTS id_tabel;
CREATE TABLE id_tabel (
id INTEGER PRIMARY KEY AUTOINCREMENT,
dieren_soort INTEGER,
voedsel_id INTEGER,
accesoires_id INTEGER
);*/

DROP TABLE IF EXISTS voedselId_tabel;
CREATE TABLE voedselId_tabel (
id INTEGER PRIMARY KEY AUTOINCREMENT,
dieren_soort INTEGER,
voedsel_id INTEGER
);

DROP TABLE IF EXISTS accesoireId_tabel;
CREATE TABLE accesoireId_tabel (
id INTEGER PRIMARY KEY AUTOINCREMENT,
dieren_soort INTEGER,
accesoires_id INTEGER
);

DROP TABLE IF EXISTS voedselsoorten;
CREATE TABLE voedselsoorten (
id INTEGER PRIMARY KEY AUTOINCREMENT,
naam TEXT
);

DROP TABLE IF EXISTS geslachten;
CREATE TABLE geslachten (
id INTEGER PRIMARY KEY AUTOINCREMENT,
naam TEXT
);

DROP TABLE IF EXISTS accesoiresoorten;
CREATE TABLE accesoiresoorten (
id INTEGER PRIMARY KEY AUTOINCREMENT,
naam TEXT
);

insert into products (name, description, code, price, diersoort, kleur, ras, geslacht, gewicht) values ('Cavia', 'Cavia is een knaagdier wat in verschillende kleuren beschikbaar is en voor een mooi degelijk prijsje.', '816905633-0', 10.50, 'Cavia', 'Zwart', 'Langhaar', 1, 1);
insert into products (name, description, code, price, diersoort, kleur, ras, geslacht, gewicht) values ('konijn', 'Heeft u altijd al een schattig knaagdier gewild dan is dit uw kans voor een schattig klein dwergse langhoor.', '445924201-X', 15.60, 'Konijn', 'bruin', 'Nederlandse Hangoor Dwerg', 2, 5);
insert into products (name, description, code, price, diersoort, kleur, ras, geslacht, gewicht) values ('labrador','Wil de u altijd aleen Labrador dan hebben we nu een bruin cocolade labrador pup voor een mooi zacht prijsje (199 euro voor een labrador zonder vaccinaties en 600 euro met vacinaties.))', '693155505-7', 199.00 600.00 , 'Hond', 'bruin', 'Labrador', 1, 12);
insert into products (name, description, code, price, diersoort, kleur, ras, geslacht, gewicht) values ('goudvis', 'Heeft u altijd al een vis gewild en met name een goudvis dan is dit uw kans.', '686928463-6', 4.50, 'Goudvis', 'Oranje', 'nvt', 3, 0.1);
insert into products (name, description, code, price, diersoort, kleur, ras, geslacht, gewicht) values ('grasparkiet', 'Heeft u nou altijd al een grasparkiet willen hebben dat kan dan nu voor een mooi zacht prijsje.', '492662523-7', 26,45, 'Grasparkiet', 'Citroengeel', 'nvt', 1, 0.4);
insert into products (name, description, code, price, diersoort, kleur, ras, geslacht, gewicht) values ('capybara', 'Heeft u altijd al een grote cavia gewild of dan is dit uw kans om een capybara te verkrijgen (wij hebben alle vernodigde vergunningen om hem veilig en wel naar uw te verkopen).', '2353465564-2', 696.96, 'Capybara', 'Bruin', 'nvt', 1, 40);
insert into products (name, description, code, price, diersoort, kleur, ras, geslacht, gewicht) values ('sprinkhaan', 'Heeft u altijd al een sprinkhaan gewild dan is dit uw kans.', '2353465564-2', 1.50, 'Sprinkhaan', 'Groen', 'nvt', 2, 0.07);
insert into products (name, description, code, price, diersoort, kleur, ras, geslacht, gewicht) values ('kat', 'Heeft u altijd al een schattig chagerijninge kat gewild dan is dit uw kans om een britse langhaar te verkrijgen (150 euro zonder vaccinaties en 350 euro met vacinaties.).', '2353465564-2', 150.00 350.00, 'Kat', 'Grijs', 'Britse Langhaar', 2, 10);


insert into accesoires (naam, kleur, soort, product_id) values ('caviahok', 'bruinhout', 1, 9);
insert into accesoires (naam, kleur, soort, product_id) values ('bal', 'rood', 2, 10);  
insert into accesoires (naam, kleur, soort, product_id) values ('trui', 'geel', 3, 11); 
insert into accesoires (naam, kleur, soort, product_id) values ('hondenhuis', 'blauw', 1, 12);
insert into accesoires (naam, kleur, soort, product_id) values ('brocolliknuffel', 'groen', 2, 13);  
insert into accesoires (naam, kleur, soort, product_id) values ('WK trui', 'oranje', 3, 14); 
insert into accesoires (naam, kleur, soort, product_id) values ('muis aan hengel', 'wit', 2, 15);
insert into accesoires (naam, kleur, soort, product_id) values ('kattenmand', 'rood', 1, 16);  


insert into voedsel (voedselsoort, merk, hoeveelheid, product_id) values (5, 'Carnibest', 1, 17);
insert into voedsel (voedselsoort, merk, hoeveelheid, product_id) values (1, 'Felix', 2, 18);
insert into voedsel (voedselsoort, merk, hoeveelheid, product_id) values (2, 'Beaphar', 0.20, 19);
insert into voedsel (voedselsoort, merk, hoeveelheid, product_id) values (3, 'Pedigree', 0.55, 20);
insert into voedsel (voedselsoort, merk, hoeveelheid, product_id) values (4, 'Tetra', 0.01, 21);
insert into voedsel (voedselsoort, merk, hoeveelheid, product_id) values (1, 'Bunny Nature', 2, 22);
insert into voedsel (voedselsoort, merk, hoeveelheid, product_id) values (2, 'Albert Heijn', 0.20, 23);
insert into voedsel (voedselsoort, merk, hoeveelheid, product_id) values (3, 'Complete', 0.55, 24);


insert into voedselId_tabel (dieren_soort, voedsel_id) values (1, 2);
insert into voedselId_tabel (dieren_soort, voedsel_id) values (1, 3);
insert into voedselId_tabel (dieren_soort, voedsel_id) values (1, 7);
insert into voedselId_tabel (dieren_soort, voedsel_id) values (2, 2);
insert into voedselId_tabel (dieren_soort, voedsel_id) values (2, 3);
insert into voedselId_tabel (dieren_soort, voedsel_id) values (2, 7);
insert into voedselId_tabel (dieren_soort, voedsel_id) values (3, 1);
insert into voedselId_tabel (dieren_soort, voedsel_id) values (3, 4);
insert into voedselId_tabel (dieren_soort, voedsel_id) values (4, 4);
insert into voedselId_tabel (dieren_soort, voedsel_id) values (5, 3);
insert into voedselId_tabel (dieren_soort, voedsel_id) values (6, 7);
insert into voedselId_tabel (dieren_soort, voedsel_id) values (7, NULL);
insert into voedselId_tabel (dieren_soort, voedsel_id) values (8, 1);
insert into voedselId_tabel (dieren_soort, voedsel_id) values (8, 2);


insert into accesoireId_tabel (dieren_soort, accesoires_id) values (1, 1);
insert into accesoireId_tabel (dieren_soort, accesoires_id) values (1, 1);
insert into accesoireId_tabel (dieren_soort, accesoires_id) values (1, 1);
insert into accesoireId_tabel (dieren_soort, accesoires_id) values (2, 1);
insert into accesoireId_tabel (dieren_soort, accesoires_id) values (2, 1);
insert into accesoireId_tabel (dieren_soort, accesoires_id) values (2, 1);
insert into accesoireId_tabel (dieren_soort, accesoires_id) values (3, 2);
insert into accesoireId_tabel (dieren_soort, accesoires_id) values (3, 3);
insert into accesoireId_tabel (dieren_soort, accesoires_id) values (3, 4);
insert into accesoireId_tabel (dieren_soort, accesoires_id) values (3, 5);
insert into accesoireId_tabel (dieren_soort, accesoires_id) values (3, 6);
insert into accesoireId_tabel (dieren_soort, accesoires_id) values (4, NULL);
insert into accesoireId_tabel (dieren_soort, accesoires_id) values (5, NULL);
insert into accesoireId_tabel (dieren_soort, accesoires_id) values (6, NULL);
insert into accesoireId_tabel (dieren_soort, accesoires_id) values (7, NULL);
insert into accesoireId_tabel (dieren_soort, accesoires_id) values (8, 8);
insert into accesoireId_tabel (dieren_soort, accesoires_id) values (8, 7);


insert into voedselsoorten (naam) values ('droogvoer');
insert into voedselsoorten (naam) values ('groenvoer');
insert into voedselsoorten (naam) values ('snack');
insert into voedselsoorten (naam) values ('visvoer');
insert into voedselsoorten (naam) values ('vlees');

insert into geslachten (naam) values ('mannetje');
insert into geslachten (naam) values ('vrouwtje');
insert into geslachten (naam) values ('nvt');

insert into accesoiresoorten (naam) values ('verblijf');
insert into accesoiresoorten (naam) values ('speeltje');
insert into accesoiresoorten (naam) values ('kleding');




--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--









