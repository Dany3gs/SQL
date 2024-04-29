--ORDER BY


/*Con esta secuencia podemos ordenar los registros de forma ascendente ASC, que es como
se ordena por defecto, o DESC, se indica de la siguiente manera*/

SELECT * FROM users ORDER BY age;

SELECT * FROM users ORDER BY age ASC;

SELECT * FROM users ORDER BY age DESC;

/*Podemos ir cerrando la consulta mediante más secuencia, y ordenarlas como deseemos,
por ej, filtrando que el email sea el de Sara, el cuál lo tienen dos registros*/

SELECT * FROM users WHERE email='sara@gmail.com' ORDER BY age DESC;

SELECT name FROM users WHERE email='sara@gmail.com' ORDER BY age DESC;
