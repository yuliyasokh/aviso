create sequence public.rating_seq start with 10 increment by 1;

create table rating(
rating_id int,
client_id int not null,
rating_agency varchar(50) not null,
update_time date not null,
rating_value varchar(10) not null,
country_id int
);

ALTER TABLE rating ADD PRIMARY KEY(rating_id);
ALTER TABLE rating ADD CONSTRAINT fk_rating_client
	FOREIGN KEY (client_id) REFERENCES client(client_id) ON DELETE CASCADE;
ALTER TABLE rating ADD CONSTRAINT fk_country_rating
	FOREIGN KEY (country_id) REFERENCES country(country_id) ON DELETE CASCADE;