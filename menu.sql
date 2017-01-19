CREATE TABLE `menu` (
  `Menu_Id` INT(11) NOT NULL AUTO_INCREMENT,
  `Menu_Item` INT(11) NOT NULL,
  `Food_Type` INT(11) NOT NULL,
  `Quantity` INT(11) NOT NULL,
  PRIMARY KEY (`Menu_Id`),
  KEY `fk_Menu_MenuItem` (`Menu_Item`),
  KEY `fk_Menu_FoodType` (`Food_Type`),
  CONSTRAINT `fk_Menu_FoodType` FOREIGN KEY (`Food_Type`) REFERENCES `food_types` (`Type_id`),
  CONSTRAINT `fk_Menu_MenuItem` FOREIGN KEY (`Menu_Item`) REFERENCES `menu_items` (`Item_Id`)
)

-------------------------------------------------------------------------------------------------------
INSERT INTO `menu` (`Menu_Id`, `Menu_Item`, `Food_Type`, `Quantity`) VALUES('1','1','1','100');
INSERT INTO `menu` (`Menu_Id`, `Menu_Item`, `Food_Type`, `Quantity`) VALUES('2','2','1','100');
INSERT INTO `menu` (`Menu_Id`, `Menu_Item`, `Food_Type`, `Quantity`) VALUES('3','3','1','100');
INSERT INTO `menu` (`Menu_Id`, `Menu_Item`, `Food_Type`, `Quantity`) VALUES('4','4','1','100');
INSERT INTO `menu` (`Menu_Id`, `Menu_Item`, `Food_Type`, `Quantity`) VALUES('5','5','1','100');
INSERT INTO `menu` (`Menu_Id`, `Menu_Item`, `Food_Type`, `Quantity`) VALUES('6','6','1','100');
INSERT INTO `menu` (`Menu_Id`, `Menu_Item`, `Food_Type`, `Quantity`) VALUES('7','7','1','100');
INSERT INTO `menu` (`Menu_Id`, `Menu_Item`, `Food_Type`, `Quantity`) VALUES('8','8','2','75');
INSERT INTO `menu` (`Menu_Id`, `Menu_Item`, `Food_Type`, `Quantity`) VALUES('9','9','2','75');
INSERT INTO `menu` (`Menu_Id`, `Menu_Item`, `Food_Type`, `Quantity`) VALUES('10','10','2','75');
INSERT INTO `menu` (`Menu_Id`, `Menu_Item`, `Food_Type`, `Quantity`) VALUES('11','6','3','200');
INSERT INTO `menu` (`Menu_Id`, `Menu_Item`, `Food_Type`, `Quantity`) VALUES('12','7','3','200');
INSERT INTO `menu` (`Menu_Id`, `Menu_Item`, `Food_Type`, `Quantity`) VALUES('13','11','3','200');
INSERT INTO `menu` (`Menu_Id`, `Menu_Item`, `Food_Type`, `Quantity`) VALUES('14','12','4','100');
INSERT INTO `menu` (`Menu_Id`, `Menu_Item`, `Food_Type`, `Quantity`) VALUES('15','13','4','100');
INSERT INTO `menu` (`Menu_Id`, `Menu_Item`, `Food_Type`, `Quantity`) VALUES('16','14','4','100');
