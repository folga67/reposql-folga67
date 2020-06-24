use vk;


insert into users (firstname, lastname, email, phone, is_active)
values ('Reuben', 'Nienow', 'arlo68210@example.com', null, default);

insert into users
set
	firstname = 'Kristina';

insert into users (firstname, lastname, email, phone)
select firstname, lastname, email, phone
from vk2.users
where id >50

select distinct firstname, lastname
from users
where id =1
;

insert into friend_requiests (initiator_user_id, target_user_id, `status`)
values('1', '2', 'requested')
;

update friend_requiests
set
	`status` = 'approved'
	where initiator_user_id = 1 and target_user_id = 2 and `status` = 'requested'
;

insert into `messages`(from_user_id, to_user_id, body, created_at)
values
('2', '3', 'jfhkghfhfkhdkhgdf', '2001-08-04'),
('3', '2', 'jfhkghfhfkhdkhgdf', '2001-09-04'),
('2', '1', 'jfhkghfhfkhdkhgdf', '2001-07-04')
;

delete from messages
where from_user_id = 2 and to_user_id = 1;


