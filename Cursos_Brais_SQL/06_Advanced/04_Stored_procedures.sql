--STORE PROCEDURE Procedimiento almacenado, es parecido a una view pero tiene sus diferencias

/*Es una query que guardamos en favoritos por decir, hay varios tipos */

--Según la sintaxis de esta sentencia, se crea así con el delimeter para quitar el ;

/*Creando este procedimiento, solo nos traeremos todos los usuarios de la tabla users, no tiene mucho sentido*/
DELIMITER //
CREATE PROCEDURE p_all_users()
BEGIN
	SELECT * FROM users;
END//

--Se llama con 
CALL p_all_users;


--Se le pueden insertar parametros a la query para filtrar datos, con esto nos pedira un valor al hacer la consulta

/*En este ejemplo tenemos un error que nos devuelve todos los datos de la tabla filtrado por age por
indicar en (IN age INT) el campo solo age, por eso coge todos los datos de age*/
--DELIMITER //
CREATE PROCEDURE p_age_users(IN age INT)
BEGIN
	SELECT * FROM users WHERE age = age;
END

/*Llamamos indicando el valor que queremos filtrar y en este caso nos devuelve todos los registros de la tabla,
no está teniendo en cuenta el valor de 30 por que hemos asignado el parametro WHERE age = age*/
CALL p_age_users(30);

--elimianos para crear correctamente
DROP PROCEDURE p_age_users;

/*Hay que dar un nombre distinto al parametro age para filtrar, en este caso le ponemos "age_param", también podríamos
pasar varios parametros*/
--DELIMITER //
CREATE PROCEDURE p_age_users(IN age_param INT)
BEGIN
--Y para que filtre el parametro solicitado, se lo indicamos también en WHERE
	SELECT * FROM users WHERE age = age_param;
END--//

--Ahora si mostrará los valores que cumplan con el indicado
CALL p_age_users(30);