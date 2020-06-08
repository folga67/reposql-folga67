/*ѕусть в таблице users пол€ created_at и updated_at
 * оказались незаполненными. «аполните их текущими датой и временем.*/

use mydb;

drop table if exists users;
create table users(
id serial primary key,
name varchar(50),
email varchar(50),
created_at varchar(50),
update_at varchar(50)
);

insert into users (name, email)
values
('voluptatibus', 'brandon93@example.com'),
('et', 'bridgette.wunsch@example.com'),
('possimus', 'ulises.blick@example.com'),
('porro', 'rogahn.marty@example.org')
;


update users 
set created_at = now();

update users 
set update_at = now();


