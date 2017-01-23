#Check whether the item is present in the menu_items table or not.
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