CREATE PROCEDURE solution()
BEGIN
SELECT item_name, item_type, COUNT(item_type) AS item_Count
FROM availableitems
GROUP BY item_name, item_type
ORDER BY item_type, item_name;
END