DROP PROCEDURE toinsert

DELIMITER $$
CREATE
   
    PROCEDURE toinsert(IN _list1 MEDIUMTEXT,IN _list2 MEDIUMTEXT,seat_number VARCHAR(20),order_time TIME)
    
    BEGIN
          DECLARE _next1 TEXT DEFAULT NULL ;
          DECLARE _nextlen1 INT DEFAULT NULL;
          DECLARE _value1 TEXT DEFAULT NULL;
          DECLARE _next2 TEXT DEFAULT NULL ;
          DECLARE _nextlen2 INT DEFAULT NULL;
          DECLARE _value2 TEXT DEFAULT NULL;
          DECLARE order_id INT;
          SET order_id=(FLOOR(100+RAND()*(900)));
                           
         iterator :
         LOOP    
            IF LENGTH(TRIM(_list1)) = 0 OR _list1 IS NULL OR LENGTH(TRIM(_list2)) = 0 OR _list2 IS NULL THEN
              LEAVE iterator;
              END IF;
  
   
                 SET _next1 = SUBSTRING_INDEX(_list1,',',1);
                 SET _nextlen1 = LENGTH(_next1);
                 SET _value1 = TRIM(_next1);
                 
                 SET _next2 = SUBSTRING_INDEX(_list2,',',1);
                 SET _nextlen2 = LENGTH(_next2);
                 SET _value2 = TRIM(_next2);
                 
                 CALL Request_Order(order_id,_next1,_next2,seat_number,order_time);
                 
                 UPDATE seat_status
          SET seats_status='Available'
          WHERE seat_id=( SELECT seat_id FROM seats WHERE seat_no = seat_number);
                 
                 DO SLEEP(5);
                 
                   SET _list1 = INSERT(_list1,1,_nextlen1 + 1,'');
                   SET _list2 = INSERT(_list2,1,_nextlen2 + 1,'');

         END LOOP;       
    END$$
DELIMITER ;

DROP PROCEDURE toinsert
CALL toinsert('varietyrice,southindianmeals','2,5','seat_5','13:00:00')


