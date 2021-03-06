CREATE SEQUENCE seq_contract START WITH 5;

CREATE TABLE Contract
(contractId  INTEGER GENERATED BY DEFAULT AS SEQUENCE seq_contract NOT NULL PRIMARY KEY,
clientId INTEGER NOT NULL FOREIGN KEY REFERENCES client(client_id) ON DELETE CASCADE,
productId INTEGER NOT NULL FOREIGN KEY REFERENCES product_name(name_id) ON DELETE CASCADE,
startDate DATE,
maxBorrow INTEGER,
status boolean);

insert into Contract values(1,1,1,'2013-03-10',100,false );
insert into Contract values(2,1,2,'2013-04-10',500,false );
insert into Contract values(3,1,3,'2013-06-10',700,false);
insert into Contract values(4,1,4,'2013-05-10',800,false);

