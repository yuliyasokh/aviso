CREATE SEQUENCE seq_city START WITH 4;

CREATE TABLE city (city_id INTEGER,
city_name VARCHAR(50) NOT NULL,
country_id INTEGER FOREIGN KEY REFERENCES country(country_id) ON DELETE CASCADE,
PRIMARY KEY(city_id));

INSERT INTO city values (1, 'Odessa', 1);
INSERT INTO city values (2, 'Lvov', 1);
INSERT INTO city values (3, 'Kiev', 1);

CREATE SEQUENCE seq_contact START WITH 10;

CREATE TABLE contact (contact_id INTEGER,
client_id INTEGER FOREIGN KEY REFERENCES client(client_id) ON DELETE CASCADE,
city_id INTEGER FOREIGN KEY REFERENCES city(city_id) ON DELETE CASCADE,
address VARCHAR(250),
status INTEGER, PRIMARY KEY (contact_id));

INSERT INTO contact values (1, 1, 1, 'Mihaylovskaya', 1);
INSERT INTO contact values (2, 1, 2, 'Teatralnaya', 1);
INSERT INTO contact values (3, 1, 3, 'Kreschyatik', 1);

INSERT INTO contact values (4, 7, 1, 'Deribasovskaya', 1);