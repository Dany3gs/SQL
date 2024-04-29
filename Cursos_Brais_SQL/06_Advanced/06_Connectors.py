#Estos es un comentario en Py
#Hace referencia a retos de programación de en GitHub, ver más adelante por que no cuadra

# Lección 19.2: https://youtu.be/OuJerKzV5T0?t=21149

# Ejemplo de conexión desde Python a una base de datos local
# Se ejemplifica cómo evitar SQL INJECTION
import mysql.connector


config = {
        "host": "127.0.0.1",
        "port": "3306",
        "database": "hello_mysql",
        "user": "root",
        "password": "123456**"
}

connection = mysql.connector.connect(**config)
cursor = connection.cursor()

query = "SELECT * FROM users"
print(query)
cursor.execute(query)
result = cursor.fetchall()

for row in result:
        print(row)

cursor.close()
connection.close()

# 5:52:32