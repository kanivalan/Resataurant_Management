
CREATE TABLE `seat_status` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `seat_id` INT(11) DEFAULT NULL,
  `seat_availablity` VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_seat_id` (`seat_id`),
  CONSTRAINT `fk_seat_id` FOREIGN KEY (`seat_id`) REFERENCES `seats` (`Seat_Id`)
)

--------------------------------------------------------------------------------------------
INSERT INTO `seat_status` (`id`, `seat_id`, `seat_availablity`) VALUES('1','1','Available');
INSERT INTO `seat_status` (`id`, `seat_id`, `seat_availablity`) VALUES('2','2','Available');
INSERT INTO `seat_status` (`id`, `seat_id`, `seat_availablity`) VALUES('3','3','Available');
INSERT INTO `seat_status` (`id`, `seat_id`, `seat_availablity`) VALUES('4','4','Available');
INSERT INTO `seat_status` (`id`, `seat_id`, `seat_availablity`) VALUES('5','5','Available');
INSERT INTO `seat_status` (`id`, `seat_id`, `seat_availablity`) VALUES('6','6','Available');
INSERT INTO `seat_status` (`id`, `seat_id`, `seat_availablity`) VALUES('7','7','Available');
INSERT INTO `seat_status` (`id`, `seat_id`, `seat_availablity`) VALUES('8','8','Available');
INSERT INTO `seat_status` (`id`, `seat_id`, `seat_availablity`) VALUES('9','9','Available');
INSERT INTO `seat_status` (`id`, `seat_id`, `seat_availablity`) VALUES('10','10','Available');
