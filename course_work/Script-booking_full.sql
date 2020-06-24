/*�� ����������� ������ �� ������������ ��������. ����������� - ��� ����. (������ booking.com)
�������� ��� �� ���������� ��������: ������ ������������:
1. ���������� �� ������, ������� ������ ��������������� ��������� ������� ��� �������������� �����������
������������ ����� �������; ������� Hotels, Hotel_profiles, Countries, Cities.

��� ��� ������������ �������� ����� ������������ �� � �������� �����, � �� ������ ��� ������,
��� ��� ������� ��������������� ������� Countries � Cities.
������� Hotels  �������� ������ �������� ����� � �������� ������� ������� � ��������� Countries � Cities.
������� Hotel_profiles �������� ��� ���������� ���������� ���������� ��� �����. ������� ������
��������� � ������� Hotels.

��� �������� ������� � �������� ��� ������������ ������� ��� ��������� �������: Rooms � Facilities.
�������������� ���� ���� ��������� ���������� �����������. � ���� �� �������� �������� ��������
��������� (price).
;

2. ���������� � ��, ������� ��������� ������ � ������ � ������������ ����. 
��� �������� ���������� ������� ��� �������: Users � User_profiles.
;

3. ���������� � ������������
������� ������� Book, ��� �������� ���������� � ������ ���������� ������������ ������� ����������� ��. 
�������� ������� ��� ������� � ��������� Users, Hotels, Rooms, Facilities. � ������� ���� �������� ���� ������-
date_entry � ���� ������� - date_departure.
�������� ���� ����������� ��������������� ����� ������, ����� ��� ������� ������ ����� ����� ����������
� ����� ���������, ����� ������ ������� � ����� �� ��������� ��������, ������� ����� ���, � ����� ������
��������� � ����� ������, � ������ ����� ����� �����, � ����� ��������.
; 
�����: 
dump ��: backup_booking_full_250620.sql;
������ ������:  booking_full.sql;
������ ���������� ��: booking_fill.sql;

������������ �������������:
- �� ������ ������� �� ���������� ����� �� ������� ������������ room_cost;
- �� ������ ������� �� ��������� ������� ������� � ��������� ���������� �� ������������.

������������ �������, ������������ ��������� ��������� �������, ��������������� � ������,
��������� ������� - ���� ������� � ���� ������.
�����:
������ ������������� � �������: Script_view.sql

������������ �������� �� ������ �������� ������:
 - ���� ������� �� ����� ���� ������ ���� ������;
 - ���� �������� user �� ����� ���� �����, ��� ������� ���� ��������� ������;
 - ���������� ������������ ������ � ���� �� ������ � �������� ���, �� �������� ��� ���� ������������ � ��.

������������ ���������� ���������� ������������ ����� � ��� �������: Users � User_profiles.

������������ �������� ��������� �� ���������� ������������ 
�����:
������ ��������� � ����������: Script_trigger.sql

������������ ��������� ������� � � �������������� JOIN.
�����:
������ ��������: Script_select.sql
*/

drop database if exists booking_full;
create database booking_full;
use booking_full;

drop table if exists countries;
drop table if exists cities;
drop table if exists hotels;
drop table if exists hotel_profiles;
drop table if exists rooms;
drop table if exists users;
drop table if exists user_profiles;
drop table if exists book;
drop table if exists facilities;

create table countries(
	country_id serial primary key,
	name varchar(100) not null,
		
	index (country_id)
);


create table cities (
	city_id serial primary key,
	city varchar(100) not null,
		
	index (city_id),
	foreign key (city_id) references countries(country_id)
);


create table hotels(
	hotel_id serial primary key,
	name varchar(100),
		
	index (hotel_id),
	foreign key (hotel_id) references countries(country_id),
	foreign key (hotel_id) references cities(city_id)
);
	
create table hotel_profiles(
	hotel_profile_id serial primary key,
	street varchar(100),
	house varchar(10),
	email varchar(100),
	phone varchar(100),
	
	foreign key (hotel_profile_id) references hotels(hotel_id)	
);
	
create table facilities(
	id serial primary key,
	hotel_id int unsigned not null,
	service_name varchar(100),
	price int unsigned not null,
	description varchar(500),
	
	foreign key (id) references hotel_profiles(hotel_profile_id)
);

create table rooms(
	id serial primary key,
	`floor`	int,
	seats	int unsigned not null,
	`type`	ENUM('econom', 'suit', 'lux'),
	price INT unsigned not null,

	foreign key (id) references hotel_profiles(hotel_profile_id)	
);

create table users(
	id SERIAL primary key,
	firstname varchar(100),
	lastname varchar(100),
	email varchar(100) unique,
	phone varchar(100),
	password_hash varchar(100),

	index users_phone_idx (phone),
	index (firstname, lastname)
);

create table user_profiles(
user_id serial primary key,
birthday date,
gender varchar(10),
hometown varchar(100),

foreign key (user_id) references users(id)
);


create table book(
   	id SERIAL PRIMARY KEY,
    user_id INT unsigned not null,
    hotel_id INT unsigned not null,
    room_id INT unsigned not null,
    facilities_id INT unsigned not null,
    date_entry datetime,
    date_departure datetime,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	
    index (id, user_id),
    foreign key (id) references users(id),
    foreign key (id) references hotels(hotel_id),
    foreign key (id) references rooms(id),
    foreign key (id) references facilities(id)
 );




/*
-- SQL�������� ���
-- SELECT * 
  FROM numbers
 WHERE n NOT IN (SELECT id_n FROM bookings
                  WHERE (start_d <  '2018-12-04' AND end_d >= '2018-12-04') -- ��, ��� ������� �� ������ ���� � ������ �����
                     OR (start_d >= '2018-12-04' AND start_d <= '2018-12-09') -- ��, ��� ������ � ���� ����� � ������ �������� ���
                )
*/




