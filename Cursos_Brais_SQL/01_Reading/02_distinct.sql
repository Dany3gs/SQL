--DISTINCT


/*Con esta secuencia podemos hacer una selección de los valores que se repiten, en el ej
de la tabla de brais, hay dos lineas que tienen el mismo valor de edad 15, con este 
comando, solo nos mostrará los registros que no se repiten, de esta manera, podremos
ver cuantos valores únicos hay de un registro*/


SELECT DISTINCT * FROM users;

SELECT DISTINCT age FROM users;