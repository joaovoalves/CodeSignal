CREATE PROCEDURE solution()
BEGIN
	SELECT A.*
	FROM (
		SELECT name
		FROM leaderboard
		ORDER BY score DESC
		LIMIT 8) AS A
	LEFT JOIN (
		SELECT name
		FROM leaderboard
		ORDER BY score DESC
		limit 3 ) AS B
		ON A.name = B.name
		WHERE B.name IS NULL;
END