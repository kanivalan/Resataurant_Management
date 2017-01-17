DELIMITER //
CREATE FUNCTION seat_status(seat_number VARCHAR(20)) RETURNS INT(11)
BEGIN
DECLARE seat_state VARCHAR(20);
DECLARE flag INT;
SET seat_state = (SELECT seats_status FROM seat_status WHERE seat_id = ( SELECT seat_id FROM seats WHERE seat_no = seat_number));
IF(seat_state ='available')
THEN
SET flag=1;
ELSE 
SET flag=0;
END IF;
RETURN flag;

END //

DELIMITER ;
SELECT seat_status('Seat_4')