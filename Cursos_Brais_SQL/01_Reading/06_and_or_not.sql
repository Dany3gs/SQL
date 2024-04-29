--AND-OR-NOT


/*Concatenar con un AND, obligando que cumpla también ese criterio, que no cumple lo que 
se le indique con un NOT o sea uno u otro con un OR, básicamente nos va a devolver los
valores que le vayamos indicando, si cumple con los requisitos*/



SELECT * FROM users WHERE NOT email = 'sara@gmail.com';

SELECT * FROM users WHERE NOT email = 'sara@gmail.com' AND age = 15;

SELECT * FROM users WHERE NOT email = 'sara@gmail.com' OR age = 15;