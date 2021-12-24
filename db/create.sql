--
-- create tables
--
/*tabel goed*/

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  diersoort INTEGER,
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
  a_id INTEGER PRIMARY KEY AUTOINCREMENT,
  a_naam TEXT,
  a_kleur TEXT,
  soort INTEGER
);

/*hoeveelheid in kg*/
DROP TABLE IF EXISTS voedsel;
CREATE TABLE voedsel (
  v_id INTEGER PRIMARY KEY AUTOINCREMENT,
  voedselsoort INTEGER,
  merk TEXT,
  hoeveelheid INTEGER
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
vi_id INTEGER PRIMARY KEY AUTOINCREMENT,
dieren_soort INTEGER,
voedsel_id INTEGER
);

DROP TABLE IF EXISTS accesoireId_tabel;
CREATE TABLE accesoireId_tabel (
ac_id INTEGER PRIMARY KEY AUTOINCREMENT,
dieren_soort INTEGER,
accesoires_id INTEGER
);

DROP TABLE IF EXISTS voedselsoorten;
CREATE TABLE voedselsoorten (
vs_id INTEGER PRIMARY KEY AUTOINCREMENT,
vs_naam TEXT
);

DROP TABLE IF EXISTS geslachten;
CREATE TABLE geslachten (
g_id INTEGER PRIMARY KEY AUTOINCREMENT,
g_naam TEXT
);

DROP TABLE IF EXISTS accesoiresoorten;
CREATE TABLE accesoiresoorten (
acs_id INTEGER PRIMARY KEY AUTOINCREMENT,
acs_naam TEXT
);

DROP TABLE IF EXISTS diersoorten;
CREATE TABLE diersoorten (
ds_id INTEGER PRIMARY KEY AUTOINCREMENT,
ds_naam TEXT
);

insert into products (name, description, code, price, diersoort, kleur, ras, geslacht, gewicht) values ('Cavia', 'Cavia is een knaagdier wat in verschillende kleuren beschikbaar is en voor een mooi degelijk prijsje.', '816905633-0', 10.50, 1, 'Zwart', 'Langhaar', 1, 1);
insert into products (name, description, code, price, diersoort, kleur, ras, geslacht, gewicht) values ('Konijn', 'Heeft u altijd al een schattig knaagdier gewild dan is dit uw kans voor een schattig kleine dwergse langhoor.', '445924201-X', 15.60, 2, 'bruin', 'Nederlandse Hangoor Dwerg', 2, 5);
insert into products (name, description, code, price, diersoort, kleur, ras, geslacht, gewicht) values ('Labrador','Wil de u altijd al een Labrador, dan hebben we nu een bruin cocolade labrador pup voor een mooi zacht prijsje (199 euro voor een labrador zonder vaccinaties en 600 euro met vacinaties.)', '693155505-7', 199.00, 3, 'bruin', 'Labrador', 1, 12);
insert into products (name, description, code, price, diersoort, kleur, ras, geslacht, gewicht) values ('Goudvis', 'Heeft u altijd al een vis gewild en met name een goudvis dan is dit uw kans.', '686928463-6', 4.50, 4, 'Oranje', 'nvt', 3, 0.1);
insert into products (name, description, code, price, diersoort, kleur, ras, geslacht, gewicht) values ('Grasparkiet', 'Heeft u nou altijd al een grasparkiet willen hebben dat kan dan nu voor een mooi zacht prijsje.', '492662523-7', 26.45, 5, 'Citroengeel', 'nvt', 1, 0.4);
insert into products (name, description, code, price, diersoort, kleur, ras, geslacht, gewicht) values ('Capybara', 'Heeft u altijd al een grote cavia/knaagdier gewild dan is dit uw kans om een capybara te verkrijgen (wij hebben alle vernodigde vergunningen om hem veilig en wel naar uw te verkopen).', '2353465564-2', 696.96, 6, 'Bruin', 'nvt', 1, 40);
insert into products (name, description, code, price, diersoort, kleur, ras, geslacht, gewicht) values ('Sprinkhaan', 'Heeft u altijd al een sprinkhaan gewild dan is dit uw kans.', '2353465564-2', 1.50, 7, 'Groen', 'nvt', 2, 0.07);
insert into products (name, description, code, price, diersoort, kleur, ras, geslacht, gewicht) values ('Kat', 'Heeft u altijd al een schattig chagerijninge kat gewild dan is dit uw kans om een britse langhaar te verkrijgen (150 euro zonder vaccinaties en 350 euro met vacinaties.).', '2353465564-2', 150.00, 8, 'Grijs', 'Britse Langhaar', 2, 10);


insert into accesoires (a_naam, a_kleur, soort) values ('caviahok', 'bruinhout', 1);
insert into accesoires (a_naam, a_kleur, soort) values ('speelbal', 'rood', 2);  
insert into accesoires (a_naam, a_kleur, soort) values ('trui', 'geel', 3); 
insert into accesoires (a_naam, a_kleur, soort) values ('hondenhuis', 'blauw', 1);
insert into accesoires (a_naam, a_kleur, soort) values ('brocolliknuffel', 'groen', 2);  
insert into accesoires (a_naam, a_kleur, soort) values ('WK trui', 'oranje', 3); 
insert into accesoires (a_naam, a_kleur, soort) values ('muis aan hengel', 'wit', 2);
insert into accesoires (a_naam, a_kleur, soort) values ('kattenmand', 'rood', 1);  


insert into voedsel (voedselsoort, merk, hoeveelheid) values (5, 'Carnibest', 1);
insert into voedsel (voedselsoort, merk, hoeveelheid) values (1, 'Felix', 2);
insert into voedsel (voedselsoort, merk, hoeveelheid) values (2, 'Beaphar', 0.20);
insert into voedsel (voedselsoort, merk, hoeveelheid) values (3, 'Pedigree', 0.55);
insert into voedsel (voedselsoort, merk, hoeveelheid) values (4, 'Tetra', 0.01);
insert into voedsel (voedselsoort, merk, hoeveelheid) values (1, 'Bunny Nature', 2);
insert into voedsel (voedselsoort, merk, hoeveelheid) values (2, 'Albert Heijn', 0.20);
insert into voedsel (voedselsoort, merk, hoeveelheid) values (3, 'Complete', 0.55);


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


insert into voedselsoorten (vs_naam) values ('droogvoer');
insert into voedselsoorten (vs_naam) values ('groenvoer');
insert into voedselsoorten (vs_naam) values ('snack');
insert into voedselsoorten (vs_naam) values ('visvoer');
insert into voedselsoorten (vs_naam) values ('vlees');

insert into geslachten (g_naam) values ('mannetje');
insert into geslachten (g_naam) values ('vrouwtje');
insert into geslachten (g_naam) values ('nvt');

insert into accesoiresoorten (acs_naam) values ('verblijf');
insert into accesoiresoorten (acs_naam) values ('speeltje');
insert into accesoiresoorten (acs_naam) values ('kleding');

insert into diersoorten (ds_naam) values ('cavia');
insert into diersoorten (ds_naam) values ('konijn');
insert into diersoorten (ds_naam) values ('hond');
insert into diersoorten (ds_naam) values ('goudvis');
insert into diersoorten (ds_naam) values ('grasparkiet');
insert into diersoorten (ds_naam) values ('capybara');
insert into diersoorten (ds_naam) values ('sprinkhaan');
insert into diersoorten (ds_naam) values ('kat');


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--









