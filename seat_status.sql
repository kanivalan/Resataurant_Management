DELIMITER //
CREATE FUNCTION seat_status(seat_number VARCHAR(20)) RETURNS INT(11)
BEGIN
	DECLARE seat_state VARCHAR(20);
	DECLARE flag INT;
	
	SET seat_state = (SELECT seat_availablity FROM seat_status WHERE seat_id = ( SELECT seat_id FROM seats WHERE seat_no = seat_number));
	IF(seat_state ='available')
	THEN
	IF (SELECT state FROM seat_status WHERE seat_id =(SELECT seat_id FROM seats WHERE seat_no = seat_number)) = FALSE
	THEN 
	UPDATE seat_status SET state = TRUE WHERE seat_id =(SELECT seat_id FROM seats WHERE seat_no = seat_number);
	SET flag=1;
	END IF;
	ELSE 
	SET flag=0;
	END IF;
	RETURN flag;

END //

DELIMITER ;

DROP FUNCTION seat_status
SELECT seat_status('Seat_1')