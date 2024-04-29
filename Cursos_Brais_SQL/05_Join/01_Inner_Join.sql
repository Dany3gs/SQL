



-- Con este JOIN realiza una consulta incorrecta, ya que no existe un campo de relacion.
SELECT * FROM users
INNER JOIN dni;


--Con esta consulta, obtenemos los datos de los usuairos que tienen un valor en DNI
SELECT * FROM users
INNER JOIN dni 
ON users.user_id = dni.user_id;

--Es la misma consulta que la anterior, en la gran mayoria de bd no hace falta poner INNER
SELECT * FROM users
JOIN dni 
ON users.user_id = dni.user_id;

--Obtenemos el nombre y dni de los usuarios que tienen un dni y los ordena por edad descendiente
SELECT name, dni_number FROM users
JOIN dni 
ON users.user_id = dni.user_id
ORDER BY age DESC;

--Obtenemos los datos de los usuarios que tienen empresa
SELECT * FROM users
JOIN companies
ON users.company_id = companies.company_id;

--Obtenemos los datos de las empresas que tienen usuarios
SELECT * FROM companies
JOIN users
ON users.company_id = companies.company_id;

--Obtenemos el nombre de las compañias junto al nombre de los usuarios.
SELECT companies.name, users.name FROM companies
JOIN users 
ON companies.company_id = users.company_id;

--Obtenemos el nombre de usuario y el nombre del lenguaje que sabe
--La tabla lenguajes la usamos como tabla intermedia
SELECT users.name, languages.name 
FROM users_languages
JOIN users ON users_languages.user_id=users.user_id
JOIN languages ON users_languages.language_id=languages.language_id;

--Es lo mismo cambiando el orden de las tablas en la consulta, otra relación entre tablas.
SELECT users.name, languages.name
FROM users
JOIN users_languages ON users.user_id=users_languages.user_id
JOIN languages ON users_languages.language_id=languages.language_id;