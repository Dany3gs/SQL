/*Representación virtual de una o mas tablas de consulta asidua, se usan para evitar
querys que se repitan mucho, al modificar los cambios en los que es esté relacionado
ralentiza la consulta, ya que tiene actualiar la view como con los index
*/

CREATE VIEW v_adult_users AS
SELECT name, age
FROM users
WHERE age >= 18;

--Con esta vista podemos acceder mas rapiodo a esta consulta, los adultos de +18 años
SELECT * FROM v_adult_users;


--Para eliminar
DROP VIEW v_adult_users;