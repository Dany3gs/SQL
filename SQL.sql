
/* Para crear una tabla se usa CREATE TABLE+nombre (y se indican los nombres de las columnas, la id se pone asi para que autorellene el id, indicar de que tipo será cada nombre)*/
CREATE TABLE artists (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    country TEXT,
    genre TEXT);

/* Para insertar valores a las columnas, se usa INSERT INTO+nombre de la tabla+(nombre columna, nombre columna, nombre columna)*/
INSERT INTO artists (name, country, genre)
/* y los valores con VALUE */
    VALUES ("Taylor Swift", "US", "Pop");
INSERT INTO artists (name, country, genre)
    VALUES ("Led Zeppelin", "US", "Hard rock");
INSERT INTO artists (name, country, genre)
    VALUES ("ABBA", "Sweden", "Disco");
INSERT INTO artists (name, country, genre)
    VALUES ("Queen", "UK", "Rock");
INSERT INTO artists (name, country, genre)
    VALUES ("Celine Dion", "Canada", "Pop");
INSERT INTO artists (name, country, genre)
    VALUES ("Meatloaf", "US", "Hard rock");
INSERT INTO artists (name, country, genre)
    VALUES ("Garth Brooks", "US", "Country");
INSERT INTO artists (name, country, genre)
    VALUES ("Shania Twain", "Canada", "Country");
INSERT INTO artists (name, country, genre)
    VALUES ("Rihanna", "US", "Pop");
INSERT INTO artists (name, country, genre)
    VALUES ("Guns N' Roses", "US", "Hard rock");
INSERT INTO artists (name, country, genre)
    VALUES ("Gloria Estefan", "US", "Pop");
INSERT INTO artists (name, country, genre)
    VALUES ("Bob Marley", "Jamaica", "Reggae");

/* Otra tabla */
CREATE TABLE songs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    artist TEXT,
    title TEXT);

INSERT INTO songs (artist, title)
    VALUES ("Taylor Swift", "Shake it off");
INSERT INTO songs (artist, title)
    VALUES ("Rihanna", "Stay");
INSERT INTO songs (artist, title)
    VALUES ("Celine Dion", "My heart will go on");
INSERT INTO songs (artist, title)
    VALUES ("Celine Dion", "A new day has come");
INSERT INTO songs (artist, title)
    VALUES ("Shania Twain", "Party for two");
INSERT INTO songs (artist, title)
    VALUES ("Gloria Estefan", "Conga");
INSERT INTO songs (artist, title)
    VALUES ("Led Zeppelin", "Stairway to heaven");
INSERT INTO songs (artist, title)
    VALUES ("ABBA", "Mamma mia");
INSERT INTO songs (artist, title)
    VALUES ("Queen", "Bicycle Race");
INSERT INTO songs (artist, title)
    VALUES ("Queen", "Bohemian Rhapsody");
INSERT INTO songs (artist, title)
    VALUES ("Guns N' Roses", "Don't cry");

/* Para hacer consulta de la tabla, se usa SELECT+nombre-columna+FROM+nombre-tabla+WHERE+nombre-columna = "valor"; En este ejemplo se filtra por el nombre de artista "Queen"*/
SELECT title FROM songs WHERE artist = "Queen";
/* En este caso filtramos el nombre del artista por del genero Pop *** OJO se diferencias mayusculas**** */ 
SElECT name FROM artists WHERE genre = "Pop";

/*Esto es una subconsulta, se busca el titulos de canciones filtrando con IN () el genero "Pop"*/
SELECT title FROM songs WHERE artist IN ( SElECT name FROM artists WHERE genre = "Pop");





/* HAVING + GROUP BY con - SUM- COUNT- AVG-*/

/*La cláusula HAVING en SQL se utiliza en combinación con la cláusula GROUP BY para filtrar los resultados de una consulta que involucra 
funciones de agregación como SUM(), COUNT(), AVG(), etc. Mientras que la cláusula WHERE se utiliza para filtrar filas antes de agruparlas, 
la cláusula HAVING se utiliza para filtrar grupos de filas después de que hayan sido agrupadas.*/


CREATE TABLE exercise_logs
    (id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT,
    minutes INTEGER, 
    calories INTEGER,
    heart_rate INTEGER);

INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("biking", 30, 115, 110);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("biking", 10, 45, 105);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("dancing", 15, 200, 120);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("dancing", 15, 165, 120);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("tree climbing", 30, 70, 90);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("tree climbing", 25, 72, 80);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("rowing", 30, 70, 90);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("hiking", 60, 80, 85);

SELECT * FROM exercise_logs;
/*Podemos hacer una suma, resta, promeidio etc de los valores con SUM, AVG, REST... y asignar un nombre a esa columna con AS+nombre, así hacemos un filtro nuevo con operaciones*/
SELECT type, SUM(calories) AS total_calories FROM exercise_logs GROUP BY type;

SELECT type, SUM(calories) AS total_calories FROM exercise_logs
  /*Con GROUP BY podemos agrupar por columna*/
    GROUP BY type
  /* Para filtrar el total de la suma de los valores se usa HAVING, con WHERE sería el valor que indiquemos que sea <>=*/
    HAVING total_calories > 150
    ;

SELECT type, AVG(calories) AS avg_calories FROM exercise_logs
    GROUP BY type
    HAVING avg_calories > 70
    ; 
/*Para filtrar por columnas que tengan la cantidad que deseemos, el HAVING COUNT(*) el asterisco se puede poner para que busque en toda la tabla*/
SELECT type FROM exercise_logs GROUP BY type HAVING COUNT(*) >= 2;


/*Otro ejemplo */

CREATE TABLE books (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    author TEXT,
    title TEXT,
    words INTEGER);
    
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Philosopher's Stone", 79944);
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Chamber of Secrets", 85141);
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Prisoner of Azkaban", 107253);
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Goblet of Fire", 190637);
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Order of the Phoenix", 257045);
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Half-Blood Prince", 168923);
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Deathly Hallows", 197651);

INSERT INTO books (author, title, words)
    VALUES ("Stephenie Meyer", "Twilight", 118501);
INSERT INTO books (author, title, words)
    VALUES ("Stephenie Meyer", "New Moon", 132807);
INSERT INTO books (author, title, words)
    VALUES ("Stephenie Meyer", "Eclipse", 147930);
INSERT INTO books (author, title, words)
    VALUES ("Stephenie Meyer", "Breaking Dawn", 192196);
    
INSERT INTO books (author, title, words)
    VALUES ("J.R.R. Tolkien", "The Hobbit", 95022);
INSERT INTO books (author, title, words)
    VALUES ("J.R.R. Tolkien", "Fellowship of the Ring", 177227);
INSERT INTO books (author, title, words)
    VALUES ("J.R.R. Tolkien", "Two Towers", 143436);
INSERT INTO books (author, title, words)
    VALUES ("J.R.R. Tolkien", "Return of the King", 134462);
    
SELECT author, SUM(words) AS total_words FROM books
    GROUP BY author
    HAVING total_words > 1000000
    ;
SELECT author, AVG(words) AS avg_words FROM books
    GROUP BY author
    HAVING avg_words > 150000
    ;


** Explicación de LEFT JOIN ** sirve para combinar
datos entre tablas, se puede conbinar sobre una 
misma tabla**
SELECT columnas
FROM tabla_izquierda
LEFT JOIN tabla_derecha 
ON tabla_izquierda.columna = tabla_derecha.columna;
