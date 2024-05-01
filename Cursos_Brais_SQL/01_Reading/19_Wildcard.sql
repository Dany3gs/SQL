-- Este operador no lo vimos en el curso de Brais

/*Cuando queremos representar un caracter o mas en una cadena de texto, se se usa el guin bajo "_", puede ser cualquier caracter
pero solo uno, si se quiere representar mas se usan mas "__" en este ejemplo representamos 
la "r" de B"r"ais
*/


--"%"   Representa cero o mas caracteres

--lo que este antes de gmail.com
SELECT * FROM users WHERE email LIKE '%gmail.com';

--lo que este antes y despues de sara@
SELECT * FROM users WHERE email LIKE '%sara@%';

--lo que ete antes y despues de @
SELECT * FROM users WHERE email LIKE '%@%';

-- "_"   Representa un solo caracter

/*puede ser cualquier caracter pero solo uno, si se quiere representar 
mas se usan mas "__" en este ejemplo representamos la "r" de B"r"ais*/

SELECT * FROM users WHERE name LIKE 'B_ais';

-- "[]"  Representa cualquier caracter individual entre corchetes, devuelve un resultado si alguno de los caracteres de dentro coincide
--si se quiere un rango de caracteres se separa por - , ej de la "a" a la "f" '[a-f]%' ***NO SOPORTADO POR PostgreSQL ni MySQL***

SELECT * FROM users WHERE name LIKE '[Bas]%';


--"!" o "!="   Representa la negacion de una condición, es una forma abreviada de escribir "NOT", 
-- en este ejemplo indicamos que no contenga las letras "as" en el nombre

SELECT * FROM users WHERE name LIKE '[!as]%';









