CREATE PROCEDURE solution()
BEGIN
	SELECT CASE gender
			WHEN 'F' THEN CONCAT('Queen ', name)
			WHEN 'M' THEN CONCAT('King ', name)
			END as 'name'
	FROM Successors
	ORDER BY birthday;
END