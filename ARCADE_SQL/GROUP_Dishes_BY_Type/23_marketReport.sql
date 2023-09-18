CREATE PROCEDURE solution()
BEGIN
	SELECT IFNULL(country, "Total:") as "country", COUNT(*) AS "competitors"
    FROM foreignCompetitors
    GROUP BY country 
	WITH ROLLUP;
    #UNION
    #SELECT 'Total:', COUNT(*) FROM foreignCompetitors;
END