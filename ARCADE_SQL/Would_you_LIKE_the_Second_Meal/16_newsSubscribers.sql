CREATE PROCEDURE solution()
BEGIN
	SELECT f.subscriber
	FROM full_year as f 
	WHERE f.newspaper LIKE "%Daily%"
	UNION
	SELECT h.subscriber
	FROM half_year as h
	WHERE h.newspaper LIKE "%Daily%"
	ORDER BY subscriber ASC;
	END