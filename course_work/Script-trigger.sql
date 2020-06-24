-- триггер, ограничивающий введение даты отъезда меньшей, чем дата заезда.
use booking_full;

drop trigger if exists check_date_departure;

delimiter //

create trigger check_date_departure before insert on book
for each row
begin
	if new.date_departure < new.date_entry then
	signal sqlstate '45000' set message_text = 'Insert conceled. Date_departure has to be later, than date_entry'
	;
	end if;
end //

delimiter ;


use booking_full;
set foreign_key_checks = 0;
insert into book 
values ('107', '43', '35', '67', '67', '2001-02-01 08:41:40', '2012-01-08 14:23:53', '1975-06-19 06:34:14');
set foreign_key_checks = 1;



-- триггер для проверки возраста пользователя перед обновлением
use booking_full;

drop trigger if exists check_user_age_before_update;

DELIMITER //

CREATE TRIGGER check_user_age_before_update BEFORE UPDATE ON user_profiles
FOR EACH ROW
begin
    IF NEW.birthday >= CURRENT_DATE() THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Update Canceled. Birthday must be in the past!';
    END IF;
END//

DELIMITER ;

use booking_full;
set foreign_key_checks = 0;
update user_profiles 
set birthday ='2020-09-18'
where user_id =120;
set foreign_key_checks = 1;

---------  транзакция добавления нового пользователя
use booking_full;

START TRANSACTION;

INSERT INTO users (firstname, lastname, email, phone)
  VALUES ('New', 'User', 'new6@mail.com', 454545456);

SELECT @last_user_id := last_insert_id(); 

INSERT INTO user_profiles (user_id, birthday, gender, hometown)
  VALUES (@last_user_id, '1999-10-10', 'm', 'Moscow'); 
  
COMMIT;

--- триггер на добавление записи в таблицу бронирования на одни и те же даты одного и того же номера
use booking_full;

drop TRIGGER if exists check_date_before_insert;

DELIMITER //

CREATE TRIGGER check_date_before_insert BEFORE INSERT ON book
FOR EACH ROW
begin
    if exists
    (select
    book.room_id,
    count(book.room_id),
    date_entry,
    date_departure
    from book
    where 
    (new.date_entry > date_entry and (new.date_departure <date_departure))
    having  count(book.room_id) > 1) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Insert Canceled. The room has been booked!';
    end IF;
END//

DELIMITER ;

use booking_full;
set foreign_key_checks = 0;
insert into book
values ('110', '43', '35', '67', '67', '2001-02-01 08:41:40', '2012-01-08 14:23:53', '1975-06-19 06:34:14');
set foreign_key_checks = 1;

-- хранимая процедура на добавление данных в таблицу Users

delimiter //

CREATE PROCEDURE booking_full.add_user
(
id_user BIGINT,
firstname_user VARCHAR(100), 
lastname_user VARCHAR(100), 
email_user VARCHAR(100),
phone_user VARCHAR(100), 
password_hash_user VARCHAR(100)
)

AS
BEGIN     
     INSERT INTO users (id, firstname, lastname, email, phone, password_hash)
     VALUES(id_user, firstname_user, lastname_user, email_user, phone_user, password_hash_user);      
end;

delimiter ;

