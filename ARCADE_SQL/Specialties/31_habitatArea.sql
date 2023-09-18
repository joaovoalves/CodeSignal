CREATE PROCEDURE solution()
BEGIN
	#SELECT  0.5* SUM(soma)  AS area
	#FROM (
	#	SELECT  x * LEAD(y) over (ORDER BY x ASC) - LEAD(x) over (ORDER BY x ASC) * y) as soma
	#	FROM places);
	 SET @g = (SELECT CONCAT('MULTIPOINT(', GROUP_CONCAT( CONCAT(x, ' ', y) SEPARATOR ','),')')      FROM places);
  	 SELECT ST_Area(ST_ConvexHull(ST_GeomFromText(@g))) AS area;
END