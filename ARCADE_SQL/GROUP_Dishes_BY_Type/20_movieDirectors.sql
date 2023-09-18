CREATE PROCEDURE solution()
BEGIN
	SELECT director
	FROM moviesinfo
	WHERE year >= 2000 #AND oscars > 2
	GROUP BY director
	HAVING sum(oscars) > 2
	ORDER BY director;
END