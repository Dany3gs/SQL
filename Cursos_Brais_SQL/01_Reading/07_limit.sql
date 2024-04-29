--LIMIT


/*Nos sirve para limitar los registros que consultamos, aún si cumplen los requisitos
que pongamos, si limitamos al final nos saldrán los que indiquemos*/

SELECT * FROM users WHERE NOT email = 'sara@gmail.com' or age = 15 LIMIT 2;