/* ����� ����� ��������� ������������. 
�� ���� ������ ����� ������������ ������� ��������, ������� ������ ���� ������� � ����� �������������.*/

use vk2;

select 
	from_user_id,
	(select firstname from users where id = users.id), -- �� ����������, �� ������� ������
	(select lastname from users where id = users.id), -- �� ����������, �� ������� ������
	count(*) 
from messages
where to_user_id = 1
group by from_user_id
order by count(*) desc
limit 1;

-- ����� ���������� ������, ������� �������� ������������ ������ 10 ���.
select 
count(*) -- ���������� ������
from likes
where media_id in ( -- ��� ����� ������ ����� �������������
	select id 
	from media 
	where user_id in ( -- ��� ������������ ������ 10 ���
		select 
			user_id
		-- 	, birthday
		from profiles as p
		where  YEAR(CURDATE()) - YEAR(birthday) < 10
	)
);

-- ���������� ��� ������ �������� ������ (�����) - ������� ��� �������?
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
	
/*���������� ����� ���������� ������, ������� �������� 10 ����� ������� �������������.*/
	
select
	user_id,
	count(created_at)
from likes
where 
	user_id in (select timestampdiff(year, birthday, now())
from profiles



	