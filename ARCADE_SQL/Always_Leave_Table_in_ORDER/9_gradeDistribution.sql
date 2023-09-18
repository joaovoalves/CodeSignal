CREATE PROCEDURE solution()
BEGIN
	
		SELECT Name, id
		FROM Grades
		WHERE Final > 0.25 * Midterm1 + 0.25 * Midterm2 + 0.5 * Final AND Final > 0.5 *Midterm1 + 0.5 * Midterm2
		ORDER BY SUBSTRING(Name, 1, 3);
END