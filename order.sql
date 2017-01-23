DELIMITER //

CREATE PROCEDURE Request_Order(order_id INT,Food_Name VARCHAR(20),Quantity INT ,Seat_number VARCHAR(20),ordered_time TIME)
BEGIN 
/*--------variable Declaration--------------*/
DECLARE seat_check_var INT;
DECLARE item_check_var VARCHAR(20); 
DECLARE item_id_var INT;
DECLARE item_type_var INT;
DECLARE seat_availablity_var INT;
DECLARE quantity_check_var INT;
DECLARE stock_check_var INT;

/*To get the item id and then set it into item_id_var*/

SET item_id_var = (SELECT Item_Id FROM menu_items WHERE Item_name= Food_Name);

/*To get the food type id*/

SET item_type_var = (SELECT food_type FROM menu WHERE menu_item = item_id_var AND food_type IN 
		    (SELECT Type_id FROM food_types WHERE Start_Time <= ordered_time AND End_Time >= ordered_time ));		    

/*assign the boolean value to the variable according to the condition */		    
SET item_check_var = check_items(Food_Name);
SET seat_check_var = check_seat(Seat_number);
SET seat_availablity_var = seat_status(seat_number);
SET quantity_check_var = check_quantity(item_id_var,item_type_var,Quantity);
SET stock_check_var  = check_stock_quantity(Food_Name,item_id_var,item_type_var);
 
 IF (seat_check_var = 1 AND item_check_var = 1 AND quantity_check_var = 1 AND seat_availablity_var = 1 AND stock_check_var = 1 ) 
	 THEN
		IF (item_type_var IN (SELECT Type_id FROM food_types WHERE ordered_time BETWEEN start_time AND End_Time))
                THEN
                INSERT INTO food_transaction(order_id,seat_no,item_id,quantity,ordered_time,order_status) VALUES (order_id,seat_number,item_id_var,Quantity,ordered_time,"success"); 
                UPDATE seat_status SET seat_availablity = "unavailable" WHERE seat_id = ( SELECT seat_id FROM seats WHERE seat_no = seat_number);                 
                SELECT "order placed" AS message;
                ELSE 
                SELECT "Please Come at right Time" AS message;
                END IF;
                
  
   
  ELSEIF (item_check_var = 0)
  THEN
  SELECT "invalid item" AS message;
  
  ELSEIF (seat_check_var != 1)
  THEN 
  SELECT "invalid seat" AS message;
  
  ELSEIF (quantity_check_var = 0)
  THEN 
  SELECT "invalid quantity or time " AS message; 	
  
  
  ELSEIF (stock_check_var = 0)
  THEN
  SELECT "No stock" AS message; 
  END IF;
  
  END //
  DELIMITER ;      
  
  
  DROP PROCEDURE Request_order      
  
  CALL Request_Order('dosa',5,'seat_6','10:20:00')
  TRUNCATE TABLE food_transaction
  