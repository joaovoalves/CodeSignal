CREATE PROCEDURE solution()
BEGIN
	SELECT 
	id,
	name,
	surname
	FROM Suspect
	WHERE 1=1
	AND height <= 170
	AND name LIKE "b%"
	AND surname LIKE "Gre_n";
END