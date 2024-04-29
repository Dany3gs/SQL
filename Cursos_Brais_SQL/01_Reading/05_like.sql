--LIKE


/*Con esta secuencia, podemos hacer búsquedas de criterios dinámicos,
tenemos que tener el WHERE antes indicando en que columna vamos a filtrar,
y para que no tenga en cuenta lo que pueda tener antes o después de lo buscado,
se usa el símbolo %, tanto antes como después*/


SELECT * FROM users WHERE email LIKE '%gmail.com';

SELECT * FROM users WHERE email LIKE '%sara@%';

SELECT * FROM users WHERE email LIKE '%@%';