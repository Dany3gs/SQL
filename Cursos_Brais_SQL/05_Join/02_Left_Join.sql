
--También se pueden encontrar como LEFT OUTER JOIN en algunos motores de BD

SELECT * FROM users
LEFT JOIN dni 
ON users.user_id = dni.user_id;


SELECT name, dni_number FROM users
LEFT JOIN dni 
ON users.user_id = dni.user_id;


SELECT name, dni_number FROM dni
LEFT JOIN users
ON users.user_id = dni.user_id;

/*Con el ejemplo de los INNER JOIN, se pueden hacer las mismas query
con LEFT JOIN, solo que traerá todos los datos de la tabla de la izq*/

SELECT users.name, languages.name
FROM users
LEFT JOIN users_languages ON users.user_id=users_languages.user_id
LEFT JOIN languages ON users_languages.language_id=languages.language_id;


/*Un incongluencia sería hacer un LEFT JOIN y después un JOIN, por que el JOIN restringe al LEFT JOIN*/

SELECT users.name, languages.name
FROM users
--esto caca
LEFT JOIN users_languages ON users.user_id=users_languages.user_id
JOIN languages ON users_languages.language_id=languages.language_id;