CREATE PROCEDURE solution()
BEGIN
	SELECT name
	FROM Products
	ORDER BY quantity * price DESC, name ASC
	LIMIT 1;
	
END