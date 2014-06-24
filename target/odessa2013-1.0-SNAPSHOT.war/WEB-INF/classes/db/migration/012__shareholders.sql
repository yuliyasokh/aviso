CREATE SEQUENCE seq_shareholder START WITH 1;

--СОЗДАНИЕ ТАБЛИЦЫ АКЦИОНЕР
create table shareholders(
shareholder_id int,
shareholder_name varchar(50),
country_id int,
percent_of_share int,
shareholder_type_id int,
client_id int
);

--СОЗДАНИЕ И ЗАПОЛНЕНИЕ ТАБЛИЦЫ ТИП АКЦИОНЕРА
create table shareholder_type(
shareholder_type_id int,
shareholder_type_name varchar(20)
);


ALTER TABLE shareholders       ADD PRIMARY KEY(shareholder_id);
ALTER TABLE shareholder_type   ADD PRIMARY KEY(shareholder_type_id);
ALTER TABLE shareholders       ADD CONSTRAINT fk_country_id          FOREIGN KEY (country_id)          REFERENCES country(country_id) ON DELETE CASCADE;
ALTER TABLE shareholders       ADD CONSTRAINT fk_shareholder_type_id FOREIGN KEY (shareholder_type_id) REFERENCES shareholder_type(shareholder_type_id) ON DELETE CASCADE;
ALTER TABLE shareholders       ADD CONSTRAINT fk_client_id           FOREIGN KEY (client_id)           REFERENCES client(client_id) ON DELETE CASCADE;

insert into shareholder_type values (1, 'entity');
insert into shareholder_type values (2, 'government');
insert into shareholder_type values (3, 'person');

insert into country values (null ,'Russia');
insert into country values (null ,'Afganistan');
insert into country values (null ,'UK');
insert into country values (null ,'Germany');