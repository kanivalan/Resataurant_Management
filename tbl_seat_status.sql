


CREATE TABLE `seat_status` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `seat_id` INT(11) DEFAULT NULL,
  `seat_availablity` VARCHAR(20) DEFAULT NULL,
  `state` TINYINT(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_seat_id` (`seat_id`),
  CONSTRAINT `fk_seat_id` FOREIGN KEY (`seat_id`) REFERENCES `seats` (`Seat_Id`)
)

INSERT INTO `seat_status` (`id`, `seat_id`, `seat_availablity`, `state`) VALUES('1','1','Available','0');
INSERT INTO `seat_status` (`id`, `seat_id`, `seat_availablity`, `state`) VALUES('2','2','Available','0');
INSERT INTO `seat_status` (`id`, `seat_id`, `seat_availablity`, `state`) VALUES('3','3','Available','0');
INSERT INTO `seat_status` (`id`, `seat_id`, `seat_availablity`, `state`) VALUES('4','4','Available','0');
INSERT INTO `seat_status` (`id`, `seat_id`, `seat_availablity`, `state`) VALUES('5','5','Available','0');
INSERT INTO `seat_status` (`id`, `seat_id`, `seat_availablity`, `state`) VALUES('6','6','Available','0');
INSERT INTO `seat_status` (`id`, `seat_id`, `seat_availablity`, `state`) VALUES('7','7','Available','0');
INSERT INTO `seat_status` (`id`, `seat_id`, `seat_availablity`, `state`) VALUES('8','8','Available','0');
INSERT INTO `seat_status` (`id`, `seat_id`, `seat_availablity`, `state`) VALUES('9','9','Available','0');
INSERT INTO `seat_status` (`id`, `seat_id`, `seat_availablity`, `state`) VALUES('10','10','Available','0');
