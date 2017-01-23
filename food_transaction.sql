CREATE TABLE `food_transaction` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `order_id` INT(11) NOT NULL,
  `seat_no` VARCHAR(20) NOT NULL,
  `item_id` INT(11) DEFAULT NULL,
  `quantity` INT(11) NOT NULL,
  `ordered_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_status` VARCHAR(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_food_transaction_item_id` (`item_id`),
  CONSTRAINT `fk_food_transaction_item_id` FOREIGN KEY (`item_id`) REFERENCES `menu_items` (`Item_Id`)
)
------------------------------------------------------------------------------------------------------------------------
INSERT INTO `food_transaction` (`id`, `order_id`, `seat_no`, `item_id`, `quantity`, `ordered_time`, `order_status`) VALUES('1','562','seat_5','3','10','2017-01-23 10:30:00','success');
INSERT INTO `food_transaction` (`id`, `order_id`, `seat_no`, `item_id`, `quantity`, `ordered_time`, `order_status`) VALUES('2','562','seat_5','1','30','2017-01-23 10:30:00','success');
INSERT INTO `food_transaction` (`id`, `order_id`, `seat_no`, `item_id`, `quantity`, `ordered_time`, `order_status`) VALUES('3','240','seat_4','2','2','2017-01-23 10:30:00','success');
INSERT INTO `food_transaction` (`id`, `order_id`, `seat_no`, `item_id`, `quantity`, `ordered_time`, `order_status`) VALUES('4','240','seat_4','4','3','2017-01-23 10:30:00','success');
INSERT INTO `food_transaction` (`id`, `order_id`, `seat_no`, `item_id`, `quantity`, `ordered_time`, `order_status`) VALUES('5','240','seat_4','5','1','2017-01-23 10:30:00','success');
INSERT INTO `food_transaction` (`id`, `order_id`, `seat_no`, `item_id`, `quantity`, `ordered_time`, `order_status`) VALUES('6','314','seat_4','10','2','2017-01-23 12:30:00','success');
INSERT INTO `food_transaction` (`id`, `order_id`, `seat_no`, `item_id`, `quantity`, `ordered_time`, `order_status`) VALUES('7','751','seat_9','7','1','2017-01-23 20:30:00','success');
INSERT INTO `food_transaction` (`id`, `order_id`, `seat_no`, `item_id`, `quantity`, `ordered_time`, `order_status`) VALUES('8','751','seat_9','6','3','2017-01-23 20:30:00','success');
INSERT INTO `food_transaction` (`id`, `order_id`, `seat_no`, `item_id`, `quantity`, `ordered_time`, `order_status`) VALUES('9','913','seat_8','7','1','2017-01-23 20:30:00','success');
INSERT INTO `food_transaction` (`id`, `order_id`, `seat_no`, `item_id`, `quantity`, `ordered_time`, `order_status`) VALUES('10','913','seat_8','12','2','2017-01-23 20:30:00','success');
INSERT INTO `food_transaction` (`id`, `order_id`, `seat_no`, `item_id`, `quantity`, `ordered_time`, `order_status`) VALUES('11','913','seat_8','6','3','2017-01-23 20:30:00','success');
INSERT INTO `food_transaction` (`id`, `order_id`, `seat_no`, `item_id`, `quantity`, `ordered_time`, `order_status`) VALUES('12','411','seat_4','1','31','2017-01-23 10:00:00','success');
INSERT INTO `food_transaction` (`id`, `order_id`, `seat_no`, `item_id`, `quantity`, `ordered_time`, `order_status`) VALUES('13','120','seat_4','1','31','2017-01-23 10:00:00','success');
INSERT INTO `food_transaction` (`id`, `order_id`, `seat_no`, `item_id`, `quantity`, `ordered_time`, `order_status`) VALUES('14','215','seat_4','1','2','2017-01-23 11:56:07','Cancelled');
INSERT INTO `food_transaction` (`id`, `order_id`, `seat_no`, `item_id`, `quantity`, `ordered_time`, `order_status`) VALUES('15','562','seat_4','1','5','2017-01-23 11:58:47','success');
INSERT INTO `food_transaction` (`id`, `order_id`, `seat_no`, `item_id`, `quantity`, `ordered_time`, `order_status`) VALUES('16','460','seat_4','1','8','2017-01-23 10:00:00','success');
INSERT INTO `food_transaction` (`id`, `order_id`, `seat_no`, `item_id`, `quantity`, `ordered_time`, `order_status`) VALUES('17','211','seat_1','3','2','2017-01-23 10:00:00','success');
INSERT INTO `food_transaction` (`id`, `order_id`, `seat_no`, `item_id`, `quantity`, `ordered_time`, `order_status`) VALUES('18','394','seat_2','2','1','2017-01-23 10:30:00','success');
