
/*Son instrucciones que se ejecutan automaticamente cuando ocurre algo en la tabla,
por ejemplo, cuando un usuario actualiza su email, podemos crear otra tabla para guardar 
los registros anteriores en caso de que el usuario modificara el campo que hemos elegido,
el email, así tenemos el registro anterior guardado en otra tabla en modo recuperación*/

--Creamos una tabla de para el historial de los email

CREATE TABLE email_history (
email_history_id int NOT NULL AUTO_INCREMENT,
user_id int NOT NULL,
email varchar(100) DEFAULT NULL,
PRIMARY KEY (email_history_id),
UNIQUE KEY email_history_id_UNIQUE (email_history_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

--Para crear el TRIGGER

CREATE TRIGGER tg_email
--Cuando? y en que acción?
BEFORE/AFTER INSERT/UPDATE/DELETE
--En que tabla?
ON users;
--Y para quien lo queremos aplicar?
FOR EACH ROW -- en todas las filas
BEGIN
    --podemos indicar el antiguo valor con OLD y el nuevo con NEW
    IF OLD.email<> NEW.email THEN
        --Indicamos donde lo queremos insertar con un INSERT INTO
        INSERT INTO email_history(user_id, email)
        --Y los valores que queremos coger
        VALUES (OLD.user_id, OLD.email) 
        --Y cerramos con
        END IF;)
END;

--Se quedaría así

/*Para esta instucción, hay que poner un delimitador "DELIMITER // " es una directiva que se
utilia cuando se define un bloque de código como un procedimiento donde se requieren multiples
instrucciones SQL terminadas por un punto y coma ";" dentro del mismo bloque*/

DELIMITER //
CREATE TRIGGER tg_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
    IF OLD.email <> NEW.email THEN
		INSERT INTO email_history (user_id, email)
		VALUES (OLD.user_id, OLD.email);
    END IF;
END//


/*Actualiza el campo "email" del usuario 1 de la tabla "users" para probar el cambio en la 
tabla email_history*/
UPDATE users SET email = 'mouredev@gmail.com' WHERE user_id = "1";

--Eliminamos el trigger llamado "tg_email", no lo llegamos a eliminar en el curso
DROP TRIGGER tg_email;