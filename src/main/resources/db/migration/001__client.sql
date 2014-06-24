create table client (
  client_id   INTEGER,
  fname       VARCHAR(255),
  lname       VARCHAR(255),
  PRIMARY KEY(client_id)
);

CREATE SEQUENCE seq_client START WITH 2;

insert into client values (1, 'Sara', 'Conor');
insert into client values (7, 'Robot', 'T-1000');