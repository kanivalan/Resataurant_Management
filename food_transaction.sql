
 CREATE TABLE `food_transaction` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `order_id` INT(11) NOT NULL,
  `seat_no` VARCHAR(20) NOT NULL,
  `item_name` VARCHAR(20) NOT NULL,
  `quantity` INT(11) NOT NULL,
  `ordered_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_status` VARCHAR(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
)
 
 
 -------------------------------------------------------------------------------------------------------
 
 
INSERT INTO `food_transaction` (`id`, `order_id`, `seat_no`, `item_name`, `quantity`, `ordered_time`, `order_status`) VALUES('1','949','seat_2','idly','6','2017-01-18 10:00:00','success');
INSERT INTO `food_transaction` (`id`, `order_id`, `seat_no`, `item_name`, `quantity`, `ordered_time`, `order_status`) VALUES('2','949','seat_2','dosa','7','2017-01-18 10:00:00','success');
INSERT INTO `food_transaction` (`id`, `order_id`, `seat_no`, `item_name`, `quantity`, `ordered_time`, `order_status`) VALUES('3','949','seat_2','vada','9','2017-01-18 14:27:58','Cancelled');
INSERT INTO `food_transaction` (`id`, `order_id`, `seat_no`, `item_name`, `quantity`, `ordered_time`, `order_status`) VALUES('4','456','seat_4','SouthIndianMeals','1','2017-01-18 13:00:00','success');
INSERT INTO `food_transaction` (`id`, `order_id`, `seat_no`, `item_name`, `quantity`, `ordered_time`, `order_status`) VALUES('5','456','seat_4','VarietyRice','50','2017-01-18 14:13:04','Cancelled');
INSERT INTO `food_transaction` (`id`, `order_id`, `seat_no`, `item_name`, `quantity`, `ordered_time`, `order_status`) VALUES('6','232','seat_4','NorthIndianThali','1','2017-01-18 13:00:00','success');
INSERT INTO `food_transaction` (`id`, `order_id`, `seat_no`, `item_name`, `quantity`, `ordered_time`, `order_status`) VALUES('7','362','seat_4','North Indian Thali','1','2017-01-18 14:28:22','success');
INSERT INTO `food_transaction` (`id`, `order_id`, `seat_no`, `item_name`, `quantity`, `ordered_time`, `order_status`) VALUES('8','835','seat_4','north indian thali','1','2017-01-18 14:52:26','Cancelled');
