use booking_full;

-- те номера, куда заехали до нужной даты и выедут до
select
countries.name as Country,
hotels.name as Hotel,
rooms.*,
date_entry,
date_departure
from rooms
join book on book.room_id = rooms.id
join hotel_profiles on hotel_profiles.hotel_profile_id = rooms.id
join hotels on hotel_profiles.hotel_profile_id = hotels.hotel_id
join countries on countries.country_id = hotels.hotel_id
where date_entry < '1983-04-18 17:20:44' and date_departure <= '1983-05-23 21:13:45'
-- and countries.name = 'NorthDakota'
;
*/


use booking_full;

-- те номера, которые забронированы после нужной даты и будут освобождены до нужной даты
select
countries.name as Country,
hotels.name as Hotel,
rooms.*,
date_entry,
date_departure
from rooms
join book on book.room_id = rooms.id
join hotel_profiles on hotel_profiles.hotel_profile_id = rooms.id
join hotels on hotel_profiles.hotel_profile_id = hotels.hotel_id
join countries on countries.country_id = hotels.hotel_id
where date_entry > '1983-04-18 17:20:44' and date_departure < '1983-04-23 21:13:45'
-- and countries.name = 'NorthDakota'
;

-- те номера, которые забронированы после нужной даты и будут освобождены до нужной даты в стране

use booking_full;

countries.name as Country,
hotels.name as Hotel,
rooms.*,
date_entry,
date_departure
from rooms
join book on book.room_id = rooms.id
join hotel_profiles on hotel_profiles.hotel_profile_id = rooms.id
join hotels on hotel_profiles.hotel_profile_id = hotels.hotel_id
join countries on countries.country_id = hotels.hotel_id
where date_entry > '1983-04-18 17:20:44' and date_departure < '1983-04-23 21:13:45'
and countries.name = 'NorthDakota'
;

-- свободные номера в заданный период поиска  в городе X
use booking_full;

select
cities.city,
hotels.name,
rooms.*,
date_entry,
date_departure
from rooms
join book on book.room_id = rooms.id
join hotel_profiles on hotel_profiles.hotel_profile_id = rooms.id
join hotels on hotel_profiles.hotel_profile_id = hotels.hotel_id
join cities on cities.city_id = hotels.hotel_id
where date_entry < '1983-04-18 17:20:44' and date_departure > '1983-04-23 21:13:45'
and cities.city_id = 3
;

-- свободные номера в заданные даты заданного типа
use booking_full;

select
rooms.*,
(select date_entry from book where room_id = rooms.id),
(select date_departure from book where room_id = rooms.id)
from rooms
where rooms.`type`= 'lux' and rooms.id not in (select room_id from book
							where date_entry >= '1976-05-18 00:00:00' and date_departure <= '1976-05-20 00:00:00')
;


-- какие типы номеров забронированы людьми в возрасте от и до лет
use booking_full;

select
user_profiles.gender as g,
-- user_profiles.birthday,
count(rooms.id),
rooms.`type`
from rooms
join book on book.id = rooms.id
join users on users.id = book.id
join user_profiles on user_profiles.user_id = users.id
where users.id in (select user_id
		from user_profiles 	where  YEAR(CURDATE()) - YEAR(birthday) > 20
		and YEAR(CURDATE()) - YEAR(birthday) < 40)
group by g
;







