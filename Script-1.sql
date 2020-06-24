
drop database if exists vk;
create database vk;
use vk;

drop table if exists users;
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

drop table if exists profiles;
create table profiles(
    user_id serial primary key,
    gender char(1),
    birthday date,
    photo_id BIGINT unsigned null,
    hometown varchar(100),
    created_at DATETIME default now()
    );
   
alter table profiles
add constraint fk_user_id
foreign key (user_id) references users(id)
on update cascade
on delete restrict;

drop table if exists messages;
create table messages(
   id serial primary key,
   from_user_id BIGINT unsigned not null,
   to_user_id BIGINT unsigned not null,
   body text,
   created_at datetime default now(),
   
   index (from_user_id),
   index (to_user_id),
   foreign key (from_user_id) references users(id),
   foreign key (to_user_id) references users(id)
);

drop table if exists `friend_requiests`;
create table friend_requiests(
       `initiator_user_id` BIGINT UNSIGNED not null,
       `target_user_id` BIGINT unsigned not null,
       `status` ENUM('requested', 'approved', 'unfirended', 'declined'),
       -- status tinyint unsigned -- 0, 1, 2, 3, 4
       created_at datetime default now(),
       updated_at datetime on update current_timestamp,

       primary key (initiator_user_id, target_user_id),
       index (initiator_user_id),
       index (target_user_id),
       foreign key (initiator_user_id) references users(id),
       foreign key (target_user_id) references users(id)
       
 );
 
drop table if exists communities;
create table communities(
    id serial primary key,
    name varchar(200),
    admin_user_id BIGINT unsigned null,
    
    index communities_name_idx(name),
    foreign key (admin_user_id) references users(id)
);

-- M x M
drop table if exists users_communities;
create table users_communities(
    user_id BIGINT unsigned not null,
	community_id BIGINT unsigned not null,

	primary key (user_id, community_id),
	foreign key (user_id) references users(id),
	foreign key (community_id) references communities(id)
);

drop table if exists media_types;
create table media_types(
	id serial primary key,
	name varchar(200)
);
	
drop table if exists media;
create table media(
	id serial primary key,
	media_type_id BIGINT unsigned not null,
	user_id BIGINT unsigned not null,
	body text,
	filename varchar(255),
	`size` INT,
	metadata JSON,
	created_at datetime default now(),
    updated_at datetime on update current_timestamp,
    
	index(user_id),
	foreign key (media_type_id) references media_types(id),
	foreign key (user_id) references users(id)
);

drop table if exists likes;
create table likes(
	id serial primary key,
	user_id BIGINT unsigned not null,
	media_id BIGINT unsigned not null,
	created_at datetime default now(),
	
	foreign key (user_id) references users(id),
	foreign key (media_id) references media(id)
);

drop table if exists photo_albums;
create table photo_albums(
	id serial,
	name varchar(255) default null,
	user_id BIGINT unsigned not null,
	media_id BIGINT unsigned not null,
	
	primary key(id)
	foreign key (user_id) references users(id)
);

drop table if exists photos;
create table photos(
	id serial primary key,
	album_id BIGINT unsigned null,
	
	foreign key (album_id) references photo_albums(id)
	foreign key (media_id) references media(id)
