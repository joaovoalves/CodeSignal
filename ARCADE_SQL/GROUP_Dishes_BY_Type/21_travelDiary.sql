CREATE PROCEDURE solution()
BEGIN
	SELECT GROUP_CONCAT(DISTINCT country) AS countries
	FROM diary;
END