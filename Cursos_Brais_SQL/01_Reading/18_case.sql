--CASE

/*Funciona como un IF / ELSE de otro lenguaje de programación, la definición de Brais
Obtiene todos los datos de la tabla "users" y establece condiciones de visualización 
de cadenas de texto según el valor de la edad */


--ojo hay que poner la coma
SELECT *,
CASE 
    WHEN age > 18 THEN 'Es mayor de edad'
    --se pueden poner como los if, varios if
    WHEN age = 18 THEN 'Acaba de cumplir la mayoria de edad'
    ELSE 'Es menor de edad'+
    --se le pone alias para que la cabecera tenga sentido
END AS '¿Es mayor de edad?'
FROM users;

--Le añado el nuevo registro 

INSERT INTO users (user_id, name, age) VALUES (7, 'Kontrol', 18);


SELECT *,
CASE 
    WHEN age > 19 THEN True
    ELSE False
END AS '¿Es mayor de edad?'
FROM users;