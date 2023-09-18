CREATE PROCEDURE solution()
BEGIN
	SELECT name
	FROM people_hobbies
	WHERE hobbies LIKE "%reading%" AND hobbies LIKE '%sports%';
END