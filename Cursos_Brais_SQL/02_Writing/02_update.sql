--UPDATE 

/*****SIEMPRE HACER CON UN WHERE*******/


UPDATE users SET age = '21'	WHERE user_id = 11;

/*Hay que tener cuidado con el valor que vayamos a cambiar, que sea del tipo que 
hemos indicado en la base datos, en este caso, lo acepta, pero la fecha es de 
tipo date, no varchar*/

UPDATE users SET age = '20', init_date = '2023-10-12' WHERE user_id = 11;


--Revisar los formatos en https://www.w3schools.com/sql/sql_orderby.asp