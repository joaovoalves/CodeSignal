CREATE PROCEDURE solution()
BEGIN
	SELECT GROUP_CONCAT(first_name," ", surname, " #", player_number ORDER BY player_number SEPARATOR "; ") as players
	FROM soccer_team;
END