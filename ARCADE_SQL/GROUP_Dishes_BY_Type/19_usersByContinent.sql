CREATE PROCEDURE solution()
BEGIN
	SELECT continent, sum(users) as users
	FROM countries
	GROUP BY continent
	ORDER BY users DESC;
END