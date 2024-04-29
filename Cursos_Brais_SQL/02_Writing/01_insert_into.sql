--INSERT INTO


/*Con esta secuencia creamos registros, si no indicamos los campos a rellenear
serán por defecto null, y según la configuración de cada columna que hayamos dado
a la tabla habrá que rellenar los valores, en caso del id, por ser administradores
root podemos asignar uno mayor al último creado, si seguimos creando registros,
la tabla rellenará desde el último que hemos puesto*/

INSERT INTO users (user_id, name, surname) VALUES (7,'Maria', 'Lopez');


INSERT INTO users (name, surname) VALUES ('Paco', 'Perez');

INSERT INTO users (user_id, name, surname) VALUES (11, 'El', 'Merma');