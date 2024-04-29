--ALIAS (Cambiar nombre con AS)


/*Se puede cambiar el nombre de la columna para la consulta, con el comando //AS//, según dice Brais nos puede servir
las comillas simples como dobles*/



SELECT name, init_date AS "fecha de inicio en programación" FROM users WHERE name = "Brais";


SELECT name, init_date AS 'fecha de inicio en programación' FROM users WHERE name = 'Brais';

/*Con el comando CONCAT() podemos unir columnas, y cambiarles el nombre, es recomendable para que se vea
mejor la consulta, sustituir el nombre de la columna con sentido a lo que estemos uniendo, con un //AS// */
Select CONCAT('Nombre', name, '', 'Apellido', '', surname) AS 'Nombre y Apellido' FROM users;
