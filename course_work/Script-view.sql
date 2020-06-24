-- представление, показывающее сколько раз бронировался номер.
create
or replace
view booking_full.uniq_room as select
    booking_full.book.room_id as room_id,
    count(booking_full.book.room_id) as count(room_id)
from
    booking_full.book
group by
    booking_full.book.room_id
order by
    count(room_id)
;


-- посчитала сколько стоят все забронированные номера, через создание представление room_cost
-- представление будет использовано в следующей функции по вычислению стоимости всех номеров,
-- забронированных в указанный период

create or replace view room_cost as
select 
rooms.id,
rooms.price,
date_entry,
date_departure,
DATEDIFF(date_departure, date_entry)as book_days,
rooms.price*abs(DATEDIFF(date_departure, date_entry)) as book_cost
from rooms
join book on room_id = rooms.id
;

select sum(book_cost) from room_cost;
-- проверка



-- функция, возвращает сумму стоимостей номерова, забронированных
-- в указанный период. Аргументы функции- дата отъезда date_2 и дата заезда date_1.


drop function if exists booking_full.book_period_cost

delimiter //

create function booking_full.book_period_cost(date_2 datetime, date_1 datetime)
RETURNS float reads sql data
begin
	
	declare summa float;
	

set summa = (select sum(book_cost) from room_cost where date_entry > date_1 and date_departure < date_2);

return summa; 

end //
delimiter ;

use booking_full;
SELECT book_period_cost('1976-05-23 21:13:45', '1970-05-23 21:13:45');