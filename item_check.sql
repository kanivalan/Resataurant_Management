DELIMITER //

CREATE FUNCTION check_items(items_name VARCHAR(20)) RETURNS INT 
BEGIN
DECLARE flag INT;
IF EXISTS(SELECT Item_Name FROM menu_items WHERE Item_Name = items_name)
THEN
SET flag = 1;
ELSE 
SET flag = 0;
END IF;
RETURN flag;

END //
DELIMITER ;
DROP FUNCTION check_items
SELECT check_items('idly')



DELIMITER //
create procedure sample(Seat_number varchar(20))
begin
DECLARE seat_availablity_var INT;
SET seat_availablity_var = check_seat_availablity(Seat_number);


IF (seat_availablity_var = 1 ) 
 THEN
 SELECT "seat is booked please choose an another seat" AS booking_status;
 end if;
 
 end //
 delimiter ;
 
 call sample('Seat_6')
 
 
 
 