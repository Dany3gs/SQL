--SELECT


/*Secuencia para la consulta en la que se muestra los datos que queramos, con esto filtra
las columnas, o si se indica, las filas que indiquemos,
por defecto, si usamos SELECT * FROM + nombre_tabla, muestra toda la tabla
Si indicamos después del SELECT el nombre de la columna, la filtra*/

--ESTRUCTURA

SELECT * FROM users;

SELECT name FROM users;

SELECT user_id, name FROM users;