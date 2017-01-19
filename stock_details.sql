

# View To fetch the used stock from 
--------------------------------------------------------------------------------------------------------------------------------
DROP VIEW view_stock
CREATE VIEW view_stock AS 
SELECT menu_items.`Item_Name` ,food_types.`Session_Name`,menu.`Quantity`,menu.`Quantity` - SUM(food_transaction.`quantity`)
AS "remaining quantity"
FROM menu JOIN menu_items,food_transaction,food_types
WHERE menu_items.`Item_Id` = menu.`Menu_Item`
AND food_types.`Type_id`= menu.`Food_Type`
AND food_transaction.`item_name` = menu_items.`Item_Name`
AND DATEDIFF(food_transaction.`ordered_time`, CURDATE()) = 0 AND food_transaction.`order_status`='success'
GROUP BY menu_items.`Item_Name` ; 

SELECT * FROM view_stock
-------------------------------------------------------------------------------------------------------------------------------------
# View To fetch the remaining unused stock
CREATE VIEW stock_unused
AS (
SELECT menu_items.`Item_Name` ,food_types.`Session_Name`,menu.`Quantity`,menu.`Quantity`
AS "remaining quantity"
FROM menu_items JOIN menu,food_types
WHERE menu.`Food_Type` = food_types.`Type_id`
AND menu.`Menu_Item` = menu_items.`Item_Id`
AND menu_items.`Item_Name`
NOT IN (SELECT menu_items.`Item_Name`
FROM menu JOIN menu_items,food_transaction,food_types
WHERE menu_items.`Item_Id` = menu.`Menu_Item` 
AND food_types.`Type_id`= menu.`Food_Type` 
AND food_transaction.`item_name` = menu_items.`Item_Name` 
AND DATEDIFF(food_transaction.`ordered_time`, CURDATE()) = 0
GROUP BY menu_items.`Item_Name`) 
GROUP BY menu_items.`Item_Name`
)


SELECT * FROM view_stock
--------------------------------------------------------------------------------------------------------------------------
#union the above two view to get the details at single table

SELECT * FROM view_stock
UNION
SELECT * FROM stock_unused

