--HAVING ( teniendo, como otra condición)


/*Se usa para limitaciones muy concretas, sobre una propia columna que estemos definiendo*/
---- Cuenta cuantas filas contienen un dato no nulo en el campo edad de la tabla "users" mayor que 3
SELECT COUNT(age) FROM users HAVING COUNT(age) > 3;