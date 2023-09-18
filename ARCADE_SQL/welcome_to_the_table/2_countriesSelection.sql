CREATE PROCEDURE solution()
BEGIN
	SELECT *
	FROM Countries
	WHERE continent = 'Africa'
	ORDER BY name ASC;
END