-- Hay que tener muchisimo cuidado al usarlo
--También se pueden encontrar como FULL OUTER JOIN en algunos motores de BD
/*Aquí seleccionamos que nos una la LEFT JOIN con la RIGHT JOIN
filtrando por el used_id*/

--En SQL un FULL no existe como tal, se usa un UNION

--No es tan habitual.

SELECT users.user_id AS u_user_id, dni.user_id AS d_user_id
FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id
UNION
SELECT users.user_id AS d_user_id, dni.user_id AS d_user_id
FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;

--Aqui con todos las columnas
SELECT * FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id
UNION
SELECT *
FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;