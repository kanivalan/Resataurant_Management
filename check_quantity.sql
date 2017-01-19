#check whether the quantity is present according to the items
DELIMITER //

CREATE FUNCTION check_quantity(item_id INT,item_type INT,item_quantity INT) RETURNS INT(20)
BEGIN
DECLARE flag INT;
IF((item_quantity > 0 AND item_quantity <= (SELECT quantity FROM menu WHERE menu_item = item_id AND food_type = item_type))) 
THEN
SET flag = 1;
ELSE 
SET flag = 0;
END IF;
RETURN flag;
END //

DELIMITER ;

SELECT check_quantity(5,1,500)
