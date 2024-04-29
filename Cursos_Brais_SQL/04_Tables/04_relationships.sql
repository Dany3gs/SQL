/*
TIPOS DE RELACIONES
*/

/*
Relación 1:1 (uno a uno)
Lección 15.1: https://youtu.be/OuJerKzV5T0?t=13490
Relación que indica que un registro en la tabla A se relaciona 
con un sólo registro en la tabla B y viceversa.
*/

/*primera tabla con la que vamos a trabajar*/
CREATE TABLE users (
    user_id int NOT NULL AUTO_INCREMENT,
    name varchar(50) NOT NULL,
    surname varchar(100) DEFAULT NULL,
    age int DEFAULT NULL,
    init_date date DEFAULT NULL,
    email varchar(100) DEFAULT NULL,
    PRIMARY KEY (user_id)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ciS



-- El campo user_id de la tabla "dni" es clave foránea de la clave primaria user_id de la tabla "users"
-- (Un usuario sólo puede tener un DNI. Un DNI sólo puede estar asociado a un usuario)
CREATE TABLE dni (
    dni_id INT AUTO_INCREMENT PRIMARY KEY,
    dni_number INT NOT NULL,
    user_id INT, 
    UNIQUE(dni_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);

/*
Relación 1:N (uno a muchos)
Lección 15.2: https://youtu.be/OuJerKzV5T0?t=13732
Relación que indica que un registro en la tabla A puede tener varios registros relacionados en la
tabla B, pero un registro en la tabla B se relaciona con un sólo registro en la tabla A.
*/

CREATE TABLE companies(
	company_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL
);

-- El campo company_id de la tabla "users" es clave foránea de la clave primaria company_id de la tabla "companies"
-- (Un empleado (usuario) sólo puede tener una empresa, pero una empresa puede tener muchos empleados (usuarios))
/*CUANDO APLICAMOS CAMBIOS EN LA TABLA, MYsQL AL APLICAR LOS CAMBIOS INDICA EL DDL
DONDE INDICA QUE CAMBIOS HACE, INTERENSANTE LO QUE HACE, REVISAR SIEMPRE*/
ALTER TABLE users 
ADD CONSTRAINT fk_companies
FOREIGN KEY(company_id) REFERENCES companies(company_id)


CREATE TABLE languages(
	language_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);


CREATE TABLE users_languages(
	users_language_id INT AUTO_INCREMENT PRIMARY KEY,
    users_id INT,
    language_id INT,
    FOREIGN KEY(users_id) REFERENCES users(users_id),
    FOREIGN KEY(language_id) REFERENCES languages(language_id),
    UNIQUE (users_id, language_id)
);

--INSERT DATOS En las tablas
INSERT INTO dni (dni_number, user_id) VALUES (11111111, 1);
INSERT INTO dni (dni_number, user_id) VALUES (22222222, 2);
INSERT INTO dni (dni_number, user_id) VALUES (33333333, 3);ALTER TABLE persons8
RENAME COLUMN surname TO description;
INSERT INTO dni (dni_number) VALUES (44444444);


INSERT INTO companies (name) VALUES ('MoureDev');
INSERT INTO companies (name) VALUES ('Apple');
INSERT INTO companies (name) VALUES ('Google');
--Aqui da error por la configuración que le dimos a company_id
INSERT INTO companies (company_id) VALUES (5);


SELECT * FROM hello_mysql.users_languages;

INSERT INTO users_languages (users_id, language_id) VALUES (1, 1);
INSERT INTO users_languages (users_id, language_id) VALUES (1, 2);
INSERT INTO users_languages (users_id, language_id) VALUES (1, 5);
INSERT INTO users_languages (users_id, language_id) VALUES (2, 3);
INSERT INTO users_languages (users_id, language_id) VALUES (2, 5);



