CREATE TABLE link_type(typeId INTEGER PRIMARY KEY,
   typeName VARCHAR(255));

CREATE TABLE linked_clients (id INTEGER PRIMARY KEY,
   clientIdIn INTEGER REFERENCES client(client_id) ON DELETE CASCADE,
   clientIdOut INTEGER REFERENCES client(client_id) ON DELETE CASCADE,
   typeId INTEGER REFERENCES link_type(typeId),
   status boolean NOT NULL,
   contactPersonNumber VARCHAR(255));

CREATE SEQUENCE linked_client_seq START WITH 2;

INSERT INTO link_type VALUES (1, 'firstType');