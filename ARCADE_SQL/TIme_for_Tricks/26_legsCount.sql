DROP PROCEDURE IF EXISTS solution;
CREATE PROCEDURE solution()
    SELECT SUM(IF(type = 'human',2,4)) as summary_legs
    FROM creatures
    ORDER BY id;
