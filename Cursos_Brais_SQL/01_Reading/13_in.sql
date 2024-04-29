--IN


/*Es como un limite basado en uno o varios elementos que conocemos, siempre ponemos
un WHERE antes para indicar en que columna queremos buscar, no es case sensitive,
podemos poner en mayúsculas o minúsculas que lo reconoce*/



SELECT * FROM users WHERE name IN ('brais');


--también puede devolver varios registros

SELECT * FROM users WHERE name IN ('brais', 'sara');