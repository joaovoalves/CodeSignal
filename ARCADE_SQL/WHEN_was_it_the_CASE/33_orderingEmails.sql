CREATE PROCEDURE solution()
BEGIN
	SELECT id, email_title, (CASE
							WHEN size < power(2,20) THEN CONCAT(FLOOR(size / power(2,10)), ' Kb')
							ELSE CONCAT(FLOOR(size / power(2,20)), ' Mb') 
							END)AS short_size 
	FROM emails
	ORDER BY size DESC;
END