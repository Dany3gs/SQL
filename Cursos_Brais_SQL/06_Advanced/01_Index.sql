/*Es un elemento que se puede crear en una tabla de base de datos para tener
acceso mas rapido a un dato, como el indice de un libro, los indices se utilizan
para recuperar datos de la bd mas rapidamente de otra manera, los usuarios no 
pueden ver los indices, solo se utilizan para acelerar las busquedas/consultas.

Actualizar una tabla con indices lleva mas tiempo que si no los tuviera, ya que los 
indices tambien tiene que ser actualizados, recomendable usar indices unicamente en 
columbas en las que se buscara con frecuencia.*/

--Mejora el rendimiento de lectura
--Penaliza el de escritura, pesa más la tabla.

--Hay varios indices

--Indice primario(PRIMER INDEX): vinculado con la clave primaria de la tabla

--Indice unico(UNIQUE INDEX): asegura que dos filas de la tabla no tengan valores duplicados

--Indice compuesto: permite que su utilicen dos o mas columnas

/*CREATE INDEX idx_***como buena practica usar idx_+nombre****
ON que tabla? (que columna?)--nombre de la tabla(columnas las que quiera, , ...)*/



--Crea un indice llamado "idx_name" en la tabla "users" asociado al campo "name"
CREATE INDEX idx_name ON users(name);

--Crea un indice unico llamado "idx_name" en la tabla "users" asociado al campo "name"
CREATE UNIQUE INDEX idx_name ON users(name);

--Crea un indice llamado "idx_name_surname" en la tabla de "users" asociado a los campos "name" y "surname"
CREATE UNIQUE INDEX idx_name_surname ON users(name, surname);

--Para borrarlo

DROP INDEX idx_name ON users;