DELIMITER $$

CREATE PROCEDURE cancel_order(seatno VARCHAR(20),item VARCHAR(20))
BEGIN
DECLARE itemId INT;
DECLARE itemType INT;
DECLARE f_orderedTime VARCHAR(20);
DECLARE l_qty INT;
DECLARE qty INT;
DECLARE f_ordereditem VARCHAR(20);

SET f_ordereditem=(SELECT  item_name FROM food_transaction WHERE seat_no=seatno AND item_name=item
		ORDER BY ordered_time DESC LIMIT 0,1);
SET f_orderedTime=(SELECT  ordered_time FROM food_transaction WHERE seat_no=seatno AND item_name=f_ordereditem
		ORDER BY ordered_time DESC LIMIT 0,1);
SET qty=(SELECT quantity FROM food_transaction WHERE seat_no=seatno AND item_name=item ORDER BY ordered_time DESC LIMIT 0,1);
SET itemId = (SELECT Item_Id FROM menu_items WHERE Item_name=item);
SET itemType = (SELECT Food_Type FROM menu WHERE Menu_Item=itemId AND Food_Type IN
		 (SELECT Type_id FROM food_types WHERE food_types.`Start_Time` <=f_orderedTime  AND food_types.`End_Time`>=f_orderedTime ));
		 
SET l_qty=(SELECT quantity FROM menu WHERE Menu_Item=itemId AND Food_Type=itemType);
#IF (l_qty<(SELECT quantity FROM foodtype WHERE id=itemType))
UPDATE food_transaction
SET quantity=0,order_status='Cancelled'
WHERE seat_no=seatno AND item_name = f_ordereditem AND ordered_time=f_orderedTime;
SELECT 'Order cancelled sucessfully' AS message;

END $$
DELIMITER ;

DROP PROCEDURE cancel_order

CALL cancel_order('seat_6','dosa')