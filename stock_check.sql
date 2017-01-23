#check whether the quantity is present according to the items
DELIMITER //

CREATE FUNCTION check_stock_quantity(items_name VARCHAR(20),items_id INT,item_type INT) RETURNS INT(20)
BEGIN
DECLARE flag INT; 
IF (SELECT IFNULL(SUM(quantity),0)FROM food_transaction WHERE item_id = items_id
 AND DATEDIFF(ordered_time,CURDATE()) = 0) <= 
 (SELECT quantity FROM menu WHERE menu_item = items_id AND food_type = item_type ) 
THEN
SET flag = 1;
ELSE 
SET flag = 0;
END IF;
RETURN flag;
END //

DELIMITER ;

DROP FUNCTION check_stock_quantity
SELECT check_stock_quantity('idly',1,1)

TRUNCATE TABLE food_transaction


SELECT * FROM view_stock
UNION
SELECT * FROM stock_unused
