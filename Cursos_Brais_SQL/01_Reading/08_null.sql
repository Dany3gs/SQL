--NULL

/*Simplemente añadiendo el comando NULL nos devolverá la consulta los campos que sean
NULL, como con los anteriores, se puede ir añadiendo secuencias para ir filtrando más */


SELECT * FROM users WHERE email IS NULL;

SELECT * FROM users WHERE email IS NOT NULL;

SELECT * FROM users WHERE email IS NULL AND age = 15;

/*para eliminar los valores null, se usa IFNULL(valor_null, nuevo_valor),
usar AS para renombrar columna*/

SELECT name, surname, IFNULL(age, 0) AS age FROM users;

SELECT name, IFNULL(surname, ' ') AS surname, IFNULL(age, 0) AS age FROM users;