/* ѕусть задан некоторый пользователь. 
»з всех друзей этого пользовател€ найдите человека, который больше всех общалс€ с нашим пользователем.*/

use vk2;

select 
	from_user_id,
	(select firstname from users where id = users.id), -- не заработало, не понимаю почему
	(select lastname from users where id = users.id), -- не заработало, не понимаю почему
	count(*) 
from messages
where to_user_id = 1
group by from_user_id
order by count(*) desc
limit 1;

-- общее количество лайков, которые получили пользователи младше 10 лет.
select 
count(*) -- количество лайков
from likes
where media_id in ( -- все медиа записи таких пользователей
	select id 
	from media 
	where user_id in ( -- все пользователи младше 10 лет
		select 
			user_id
		-- 	, birthday
		from profiles as p
		where  YEAR(CURDATE()) - YEAR(birthday) < 10
	)
);

-- ќпределить кто больше поставил лайков (всего) - мужчины или женщины?
select 
	gender
	, count(*)
from (
	select 
		user_id as user,
		(
			select gender 
			from vk2.profiles
			where user_id = user
		) as gender
	from likes
)as dummy
group by gender;


 






select 
max(from_user_id)
from messages 
where to_user_id =4 
	and to_user_id in (select initiator_user_id from friend_requiests where target_user_id = 1
	and status = 'approved')
	
/*ѕодсчитать общее количество лайков, которые получили 10 самых молодых пользователей.*/
	
select
	user_id,
	count(created_at)
from likes
where 
	user_id in (select timestampdiff(year, birthday, now())
from profiles



	