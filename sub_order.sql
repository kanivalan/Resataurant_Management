
DELIMITER $$
CREATE
   
    PROCEDURE sub_order(IN items MEDIUMTEXT,IN quantity MEDIUMTEXT,seat_number VARCHAR(20),order_time TIME,OUT message VARCHAR(200))
    
    BEGIN
          DECLARE _next1 TEXT DEFAULT NULL ;
          DECLARE _nextlen1 INT DEFAULT NULL;
          DECLARE _value1 TEXT DEFAULT NULL;
          DECLARE _next2 TEXT DEFAULT NULL ;
          DECLARE _nextlen2 INT DEFAULT NULL;
          DECLARE _value2 TEXT DEFAULT NULL;
          DECLARE order_id INT;
          DECLARE counter INT;
          SET counter = 0;
          SET order_id=(FLOOR(100+RAND()*(900)));
                           
         iterator :
         LOOP    
            IF LENGTH(TRIM(items)) = 0 OR items IS NULL OR LENGTH(TRIM(quantity)) = 0 OR quantity IS NULL THEN
              LEAVE iterator;
              END IF;
  
   
                 SET _next1 = SUBSTRING_INDEX(items,',',1);
                 SET _nextlen1 = LENGTH(_next1);
                 SET _value1 = TRIM(_next1);
                 
                 SET _next2 = SUBSTRING_INDEX(quantity,',',1);
                 SET _nextlen2 = LENGTH(_next2);
                 SET _value2 = TRIM(_next2);
                 
                 SET counter = counter + 1;
                 IF(counter > (SELECT order_limit FROM orders_limit) )
                 THEN 
                 SELECT 'Please choose an order below 5' INTO message;                 
                 SELECT message;
                 ELSE
                 CALL Request_Order(order_id,_next1,_next2,seat_number,order_time,@out_message);
                 SELECT out_message INTO message;
                 UPDATE seat_status
                 SET seat_availablity='Available' , state = FALSE
                 WHERE seat_id=( SELECT seat_id FROM seats WHERE seat_no = seat_number);
                 
                DO SLEEP(2);
                 END IF;
                   SET items = INSERT(items,1,_nextlen1 + 1,'');
                   SET quantity = INSERT(quantity,1,_nextlen2 + 1,'');
		
         END LOOP;   
             
    END$$
DELIMITER ;
DROP PROCEDURE sub_order


CALL sub_order('vada','1','seat_2','10:30:00',@out_message)



