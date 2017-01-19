

CREATE TABLE `food_types` (
  `Type_id` INT(11) NOT NULL AUTO_INCREMENT,
  `Session_Name` VARCHAR(20) NOT NULL,
  `Start_Time` TIME NOT NULL,
  `End_Time` TIME NOT NULL,
  PRIMARY KEY (`Type_id`),
  UNIQUE KEY `Session_Name` (`Session_Name`)
) 

INSERT INTO `food_types` (`Type_id`, `Session_Name`, `Start_Time`, `End_Time`) VALUES('1','Breakfast','08:00:00','11:00:00');
INSERT INTO `food_types` (`Type_id`, `Session_Name`, `Start_Time`, `End_Time`) VALUES('2','Lunch','11:15:00','15:00:00');
INSERT INTO `food_types` (`Type_id`, `Session_Name`, `Start_Time`, `End_Time`) VALUES('3','Refreshment','15:15:00','23:00:00');
INSERT INTO `food_types` (`Type_id`, `Session_Name`, `Start_Time`, `End_Time`) VALUES('4','Dinner','19:00:00','23:00:00');
