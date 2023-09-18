CREATE PROCEDURE solution()
BEGIN
	SELECT
	s.id,
	s.name,
	s.surname
	FROM Suspect AS s
	WHERE s.height <= 170
	OR s.name NOT LIKE "b%"
	OR s.surname NOT LIKE "Gre_n"
	ORDER BY s.id ASC;
END