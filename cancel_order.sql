DELIMITER $$

CREATE PROCEDURE cancel_order(seatno VARCHAR(20),item VARCHAR(20),order_id_param INT)
BEGIN
DECLARE itemId INT;
DECLARE itemType INT;
DECLARE var_ordered_time VARCHAR(20);
DECLARE var_order_id VARCHAR(20);
DECLARE Transaction_item_quantity_var INT;
DECLARE var_ordered_item VARCHAR(20);

SET var_order_id=(SELECT  order_id FROM food_transaction 
		  WHERE seat_no=seatno AND item_name=item AND order_id = order_id_param);

SET var_ordered_item=(SELECT item_name FROM food_transaction 
		      WHERE seat_no=seatno AND item_name=item AND order_id=var_order_id);
-- ----------------------------------------------------------------------
SET var_ordered_time=(SELECT  ordered_time FROM food_transaction 
		      WHERE seat_no=seatno AND item_name=item AND order_id=var_order_id);
-- ---------------------------------------------------------		      
SET Transaction_item_quantity_var=(SELECT quantity FROM food_transaction 
		                  WHERE seat_no=seatno AND item_name=item AND order_id=var_order_id);                               
		 

UPDATE food_transaction
SET order_status='Cancelled'
WHERE seat_no=seatno AND item_name = var_ordered_item AND ordered_time=var_ordered_time AND order_id = var_order_id;
SELECT 'Order cancelled sucessfully' AS message;

END $$
DELIMITER ;

DROP PROCEDURE cancel_order

CALL cancel_order('seat_4','variety',835)