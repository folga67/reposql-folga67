/*БД обслуживает сервис по бронированию гостиниц. Потребители - физ лица. (Аналог booking.com)
Работает она по следующему принципу: Сервис аккумулирует:
1. информацию об отелях, которые желают воспользоваться площадкой сервиса для предостовления возможности
бронирования своих номеров; Таблицы Hotels, Hotel_profiles, Countries, Cities.

Так как пользователи начинают поиск бронирования не с названия отеля, а со страны или города,
для них созданы самостоятельные таблицы Countries и Cities.
Таблица Hotels  содержит только название отеля и внешними ключами связана с таблицами Countries и Cities.
Таблица Hotel_profiles сожержит всю информацию контактную информацию про отель. Внешним ключом
привязана к таблице Hotels.

Для описания номеров и допуслуг при бронировании созданы две отдельные таблицы: Rooms и Facilities.
Характеристики этих двух сущностей достаточно стандартные. В этих же таблицах выделены атрибуты
стоимости (price).
;

2. информацию о ФЛ, которые бронируют номера и услуги в определенные даты. 
Для хранения информации созданы две таблицы: Users и User_profiles.
;

3. информацию о бронировании
Создана таблица Book, для хранения информации о каждом уникальном бронировании каждого уникального ФЛ. 
Внешними ключами она связана с таблицами Users, Hotels, Rooms, Facilities. В таблице есть атрибуту дата заезда-
date_entry и дата отъезда - date_departure.
Оперируя всей информацией предоставляемой базой данных, можно без проблем узнать какой номер относиться
к какой гостинице, какая услуга связана с одной из имеющихся гостиниц, сколько стоит это, и какой клиент
проживает в каком номере, а значит какой номер занят, а какой свободен.
; 
Файлы: 
dump БД: backup_booking_full_250620.sql;
скрипт таблиц:  booking_full.sql;
скрипт заполнения БД: booking_fill.sql;

Подготовлены представления:
- на основе запроса на вычисление счета по каждому бронированию room_cost;
- на основе запроса на получение перечня номеров с указанием количества их бронирований.

Подготовлена функция, возвращающая суммарную стоимость номеров, забронированных в период,
аргументы функции - дата отъезда и дата заезда.
Файлы:
скрипт представления и функции: Script_view.sql

Подготовлены триггеры на отмену внесения данных:
 - дата отъезда не может быть раньше даты заезда;
 - дата рождения user не может быть позже, чем текущая дата занесения данных;
 - блокировка бронирования одного и того же номера в диапазон дат, по которому уже есть бронирование в БД.

Подготовлена транзакция добавления пользователя сразу в две таблицы: Users и User_profiles.

Подготовлена хранимая процедура на добавление пользователя 
Файлы:
скрипт триггеров и транзакции: Script_trigger.sql

Подготовлены вложенные запросы и с использованием JOIN.
Файлы:
скрипт запросов: Script_select.sql
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
-- SQLВыделить код
-- SELECT * 
  FROM numbers
 WHERE n NOT IN (SELECT id_n FROM bookings
                  WHERE (start_d <  '2018-12-04' AND end_d >= '2018-12-04') -- те, кто заехали до нужной даты и выедут после
                     OR (start_d >= '2018-12-04' AND start_d <= '2018-12-09') -- те, кто заедет в этот номер в нужный диапазон дат
                )
*/




