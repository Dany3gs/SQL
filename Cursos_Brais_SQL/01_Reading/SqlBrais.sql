/*Aquí subiré todo lo relacionado al curso que tiene Brais en youtube de SQL, la url al curso es esta https://www.youtube.com/watch?v=OuJerKzV5T0&t=5375s , usa para practicar la plataforma MySql Workbranch
este documento lo utilizaré para ir guardando las tablas que va creando en el curso 

Con Schemas es donde se crea la base de datos, gráficamente se puede crear sin comandos, los cuales se pueden ver con DDL, ahí se refleja todo el comando que se genera al crear por la interfaz grafica,, también se pueden
crear registros desde la interfaz, teniendo en cuenta la configuración de cada fila para no tener errores*/

/*Siguiente unidad, consulta de datos!!!

Vale, en el curso recomienda crear un fichero por comando, si podemos los guardo aquí como comentario, si no los desarrollo en un archivo diferente dentro de este, creamos, tiene tela*/


--Tabla de ejemplo, copiada de MYSql Workbench DDL

CREATE TABLE users (
    user_id int NOT NULL AUTO_INCREMENT,
    name varchar(50) NOT NULL,
    surname varchar(100) DEFAULT NULL,
    age int DEFAULT NULL,
    init_date date DEFAULT NULL,
    email varchar(100) DEFAULT NULL,
    PRIMARY KEY (user_id)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ciS