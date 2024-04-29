--WHERE(donde)


/*Secuencia para indicar que filtre por un valor que indiquemos, en este ej que
nos de los usuarios que tengan 15 años, puede ser con cualquier dato de la tabla.
Siempre que intentamos hacer una restricción tenemos que usar el comando WHERE*/

SELECT * FROM users WHERE age = 15;

/*Para mostrar alguna columna con el filtro WHERE, se cambia el * por en nombre
de la columna que nos interese, por ejemplo, dame el nombre de los registros que 
tengan 15 años*/

SELECT name FROM users WHERE age = 15;

/*En el caso que le pongamos un DISTINCT a esta consulta, nos va a devolver lo
mismo por que no los nombres de las filas que tienen 15 años son diferentes*/

SELECT DISTINCT name FROM users WHERE age = 15;

--Pero si filtramos la edad, solo nos devolverá un registro

SELECT DISTINCT age FROM users WHERE age = 15;