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

insert into products (name, description, code, price, diersoort, kleur, ras, geslacht, gewicht) values ('konijn', 'Het Trixie Groot buitenverblijf met ren is een compleet verblijf voor uw konijn of cavia. Het is gemaakt van gebeitst vurenhout met stevig metalen.

Het verblijf bestaat uit twee verdiepingen met beneden een ren en schuilplek. Door de kunststof uitschuiflade is het hok makkelijk te verschonen.', '445924201-X', 249.60, 'Konijn', 'bruin', 'Nederlandse Hangoor Dwerg', 2, 5);

insert into products (name, description, code, price, diersoort, kleur, ras, geslacht, gewicht) values ('labrador', 'Zacht warm cavia bed konijnenbed, hamsterbed slaapzak, dikke fleece klein huisdier nest gezellig schuilkussen voor Chinchilla egel fret konijn (38x28cm, grijs) Gemaakt van hoogwaardige stoffen, geeft je huisdier een comfortabele woonomgeving.
❀ De slaapzak is aan één kant open en biedt een veilige omgeving om je huisdieren veilig te houden tijdens het rusten.

❀ Het hele huisdierbed kan met de hand of voorzichtig met de machine worden gewassen en het huisdierbed kan regelmatig worden gereinigd.

❀ Zacht materiaal huisdier bed, warm genoeg voor uw lieve huisdieren bij koud weer, geef uw huisdier maximale duurzaamheid.

❀ Afmetingen: 38x28cm. Geweldig voor hamster, Syrische hamster, gerbil of de jonge cavia, trekegel, rode eekhoorn.', '693155505-7', 7.50, 'Hond', 'bruin', 'Labrador', 1, 12);

insert into products (name, description, code, price, diersoort, kleur, ras, geslacht, gewicht) values ('goudvis', 'Wil jij een Golden Retriever bestel hem dan nu voor een mooi degelijk prijsje', '686928463-6', 199.99, 'Goudvis', 'Oranje', 'nvt', 3, 0.1);
insert into products (name, description, code, price, diersoort, kleur, ras, geslacht, gewicht) values ('grasparkiet', 'Heeft u nou altijd al een goudvis willen hebben dat kan dan nu voor een mooi zacht prijsje.', '492662523-7', 8.99, 'Grasparkiet', 'Citroengeel', 'nvt', 1, 0.4);
insert into products (name, description, code, price, diersoort, kleur, ras, geslacht, gewicht) values ('capybara', 'gert de Grote', '2353465564-2', 6.90, 'Capybara', 'Bruin', 'nvt', 1, 40);
insert into products (name, description, code, price, diersoort, kleur, ras, geslacht, gewicht) values ('sprinkhaan', 'gert de Grote', '2353465564-2', 6.90, 'Sprinkhaan', 'Groen', 'nvt', 2, 0.07);
insert into products (name, description, code, price, diersoort, kleur, ras, geslacht, gewicht) values ('kat', 'gert de Grote', '2353465564-2', 6.90, 'Kat', 'Grijs', 'Britse Langhaar', 2, 10);


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









