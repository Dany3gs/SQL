--También se pueden encontrar como RIGHT OUTER JOIN en algunos motores de BD
--Es como LEFT JOIN pero trae los datos de la tabla derecha

SELECT * FROM users
RIGHT JOIN dni 
ON users.user_id = dni.user_id;

SELECT name, dni_number FROM users
RIGHT JOIN dni 
ON users.user_id = dni.user_id;

SELECT name, dni_number FROM dni
RIGHT JOIN users
ON users.user_id = dni.user_id;

SELECT users.name, languages.name
FROM users
RIGHT JOIN users_languages ON users.user_id=users_languages.user_id
RIGHT JOIN languages ON users_languages.language_id=languages.language_id;
