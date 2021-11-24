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

/*tabel goed*/
CREATE TABLE dieren (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  soort TEXT,
  kleur TEXT,
  ras TEXT,
  eten INTEGER,
  gewicht NUMERIC(10,2)
);

/*tabel goed*/
CREATE TABLE accesoires (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  kleur TEXT,
  dier_soort INTEGER,
  accesoire_soort TEXT
);

CREATE TABLE voedsel (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  dieren_soort INTEGER
  soort (carnivour, herbivour, omnivour) TEXT,
  medicijnen TEXT
)

/*tabel goed*/
CREATE TABLE id_tabel (
id INTEGER PRIMARY KEY AUTOINCREMENT,
dieren.soort INTEGER,
diersoort TEXT,
accesoires.dier INTEGER
);

/*tabel goed*/
CREATE TABLE producten (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  naam TEXT
  beschrijving TEXT,
  prijs INTEGER,
  soort_id INTEGER
);




--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price) values ('Cavia', 'Cavia is een knaagdier wat in verschillende kleuren beschikbaar is en voor een mooi degelijk prijsje.', '816905633-0', 10.5);

insert into products (name, description, code, price) values ('Trixie Buitenverblijf', 'Het Trixie Groot buitenverblijf met ren is een compleet verblijf voor uw konijn of cavia. Het is gemaakt van gebeitst vurenhout met stevig metalen.

Het verblijf bestaat uit twee verdiepingen met beneden een ren en schuilplek. Door de kunststof uitschuiflade is het hok makkelijk te verschonen.', '445924201-X', 249.60);

insert into products (name, description, code, price) values ('Aquí llega Condemor, el pecador de la pradera', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '693155505-7', 13.5);

insert into products (name, description, code, price) values ('Kiss for Corliss, A (Almost a Bride)', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14);
insert into products (name, description, code, price) values ('Velvet Goldmine', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '492662523-7', 14);

insert into dieren (soort, kleur, ras, prijs) values ('Cavia', 'Zwart', 'Langhaar', 10);

insert into producten (naam, beschrijving, prijs, soort-id) values ('Cavia Hok', 'Een cavia hok lol', 40, 1);

insert into accesoires (kleur, dier-id, prijs, accesoire-soort) values ('Rood', 1, 40, 'hok');