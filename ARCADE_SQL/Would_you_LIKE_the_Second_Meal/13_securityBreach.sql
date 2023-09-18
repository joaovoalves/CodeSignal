CREATE PROCEDURE solution()
BEGIN
SELECT *
FROM users
###### SOLUÇÃO UTILIZANDO REGEXP ########
WHERE CAST(attribute as binary) REGEXP CONCAT('.+%', BINARY(first_name), '_', BINARY(second_name), '%*')
###### SOLUÇVÃO UTILIZANDO O LIKE ##########
WHERE attribute LIKE BINARY concat('_%\%',first_name,'\_',second_name,'\%%');
;
END