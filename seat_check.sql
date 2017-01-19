#Function to check whether the seat is present in the seats table
DELIMITER //

CREATE FUNCTION check_seat(seat_number VARCHAR(10)) RETURNS INT 
BEGIN
DECLARE flag INT;
IF EXISTS(SELECT Seat_No FROM seats WHERE Seat_No = seat_number)
THEN
SET flag = 1;
ELSE 
SET flag = 0;
END IF;
RETURN flag;

END //
DELIMITER ;

SELECT check_seat('seat_31')