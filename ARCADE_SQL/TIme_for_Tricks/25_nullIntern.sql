CREATE PROCEDURE solution()
BEGIN
	SELECT COUNT(id) AS number_of_nulls
	FROM departments
	WHERE TRIM(description) LIKE "-"
		OR LOWER(TRIM(description)) LIKE 'null'
		OR LOWER(TRIM(description)) LIKE 'nil'
		OR 1 = IFNULL(description, 1);
		#GROUP BY description
END