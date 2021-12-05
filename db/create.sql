--
-- create tables
--
/*tabel goed*/

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2)
);

CREATE TABLE dieren (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  diersoort TEXT,
  kleur TEXT,
  ras TEXT,
  geslacht INTEGER,
  gewicht NUMERIC(10,2),
  product_id INTEGER
);

CREATE TABLE accesoires (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  kleur TEXT,
  soort TEXT,
  product_id INTEGER
);

/*hoeveelheid in kg*/
CREATE TABLE voedsel (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  voedselsoort INTEGER,
  merk TEXT,
  hoeveelheid INTEGER,
  product_id INTEGER
);

CREATE TABLE id_tabel (
id INTEGER PRIMARY KEY AUTOINCREMENT,
dieren_soort TEXT,
voedsel_id INTEGER,
accesoires_id INTEGER
);

CREATE TABLE voedselsoorten (
id INTEGER PRIMARY KEY AUTOINCREMENT,
naam TEXT
);

CREATE TABLE geslachten (
id INTEGER PRIMARY KEY AUTOINCREMENT,
naam TEXT
);

insert into products (name, description, code, price) values ('Cavia', 'Cavia is een knaagdier wat in verschillende kleuren beschikbaar is en voor een mooi degelijk prijsje.', '816905633-0', 10.50);

insert into products (name, description, code, price) values ('Trixie Buitenverblijf', 'Het Trixie Groot buitenverblijf met ren is een compleet verblijf voor uw konijn of cavia. Het is gemaakt van gebeitst vurenhout met stevig metalen.

Het verblijf bestaat uit twee verdiepingen met beneden een ren en schuilplek. Door de kunststof uitschuiflade is het hok makkelijk te verschonen.', '445924201-X', 249.60);

insert into products (name, description, code, price) values (' Zacht warm cavia bed konijnenbed, hamsterbed slaapzak, dikke fleece klein huisdier nest gezellig schuilkussen voor Chinchilla egel fret konijn (38x28cm, grijs)', ' Gemaakt van hoogwaardige stoffen, geeft je huisdier een comfortabele woonomgeving.
❀ De slaapzak is aan één kant open en biedt een veilige omgeving om je huisdieren veilig te houden tijdens het rusten.

❀ Het hele huisdierbed kan met de hand of voorzichtig met de machine worden gewassen en het huisdierbed kan regelmatig worden gereinigd.

❀ Zacht materiaal huisdier bed, warm genoeg voor uw lieve huisdieren bij koud weer, geef uw huisdier maximale duurzaamheid.

❀ Afmetingen: 38x28cm. Geweldig voor hamster, Syrische hamster, gerbil of de jonge cavia, trekegel, rode eekhoorn.', '693155505-7', 7.50);

insert into products (name, description, code, price) values ('Puppys, GOLDEN RETRIEVER', 'Wil jij een Golden Retriever bestel hem dan nu voor een mooi degelijk prijsje', '686928463-6', 199.99);
insert into products (name, description, code, price) values ('Goudvis', 'Heeft u nou altijd al een goudvis willen hebben dat kan dan nu voor een mooi zacht prijsje.', '492662523-7', 8.99);


insert into dieren (diersoort, kleur, ras, geslacht, gewicht, product_id) values ('Cavia', 'Zwart', 'Langhaar', 1, 1, 1);
insert into dieren (diersoort, kleur, ras, geslacht, gewicht, product_id) values ('Konijn', 'bruin', 'Nederlandse Hangoor Dwerg', 2, 5, 2);
insert into dieren (diersoort, kleur, ras, geslacht, gewicht, product_id) values ('Hond', 'bruin', 'Labrador', 1, 12, 3);
insert into dieren (diersoort, kleur, ras, geslacht, gewicht, product_id) values ('Goudvis', 'Oranje', 'nvt', 3, 0.1, 4);
insert into dieren (diersoort, kleur, ras, geslacht, gewicht, product_id) values ('Grasparkiet', 'Citroengeel', 'nvt', 1, 0.4, 5);
insert into dieren (diersoort, kleur, ras, geslacht, gewicht, product_id) values ('Capybara', 'Bruin', 'nvt', 1, 40, 6);
insert into dieren (diersoort, kleur, ras, geslacht, gewicht, product_id) values ('Sprinkhaan', 'Groen', 'nvt', 2, 0.07, 7);
insert into dieren (diersoort, kleur, ras, geslacht, gewicht, product_id) values ('Kat', 'Grijs', 'Britse Langhaar', 2, 10, 8);

insert into accesoires (kleur, soort, product_id) values ('bruinhout', 'verblijf', 9);
insert into accesoires (kleur, soort, product_id) values ('rood', 'speeltje', 10);  
insert into accesoires (kleur, soort, product_id) values ('geel', 'kleding', 11); 
insert into accesoires (kleur, soort, product_id) values ('blauw', 'verblijf', 12);
insert into accesoires (kleur, soort, product_id) values ('groen', 'speeltje', 13);  
insert into accesoires (kleur, soort, product_id) values ('oranje', 'kleding', 14); 
insert into accesoires (kleur, soort, product_id) values ('wit', 'speeltje', 15);
insert into accesoires (kleur, soort, product_id) values ('rood', 'verblijf', 16);  

insert into voedsel (voedselsoort, merk, hoeveelheid, product_id) values (5, 'campina', 1, 17);
insert into voedsel (voedselsoort, merk, hoeveelheid, product_id) values (1, 'felix', 2, 18);
insert into voedsel (voedselsoort, merk, hoeveelheid, product_id) values (2, 'beaphar', 0.20, 19);
insert into voedsel (voedselsoort, merk, hoeveelheid, product_id) values (3, 'shell', 0.55, 20);
insert into voedsel (voedselsoort, merk, hoeveelheid, product_id) values (4, 'felix', 1, 21);
insert into voedsel (voedselsoort, merk, hoeveelheid, product_id) values (1, 'bunny nature', 2, 22);
insert into voedsel (voedselsoort, merk, hoeveelheid, product_id) values (2, 'campina', 0.20, 23);
insert into voedsel (voedselsoort, merk, hoeveelheid, product_id) values (3, 'complete', 0.55, 24);

insert into voedselsoorten (naam) values ('droogvoer');
insert into voedselsoorten (naam) values ('groenvoer');
insert into voedselsoorten (naam) values ('snack');
insert into voedselsoorten (naam) values ('brokken');
insert into voedselsoorten (naam) values ('vlees');

insert into geslachten (naam) values ('mannetje');
insert into geslachten (naam) values ('vrouwtje');
insert into geslachten (naam) values ('nvt');

/*tabel goed
CREATE TABLE producten (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  naam TEXT
  beschrijving TEXT,
  prijs INTEGER,
  soort_id INTEGER
);*/

/*insert into producten (naam, beschrijving, prijs, soort_id) values ('Cavia Hok', 'Een cavia hok lol', 40, 1);*/




--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--









