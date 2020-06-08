/*¬ таблице складских запасов storehouses_products в поле value могут встречатьс€ самые
 *  разные цифры: 0, если товар закончилс€ и выше нул€, если на складе имеютс€ запасы. 
 * Ќеобходимо отсортировать записи таким образом, чтобы они выводились в пор€дке увеличени€
 *  значени€ value. ќднако, нулевые запасы должны выводитьс€ в конце, после всех записей.*/

use mydb;

drop table if exists store;
create table store(
id serial primary key,
name varchar(50),
supply INT unsigned not null)
;

insert into store (name, supply)
values
('trank', '7'),
('frank', '3'),
('tzrank', '2'),
('trdank', '14'),
('trfank', '0'),
('trdhank', '29'),
('trdajnk', '5'),
('trdagnk', '0')
;

select name, supply from store order by supply;



