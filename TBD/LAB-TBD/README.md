# Lab_TBD
Laboratorio 2021-2

# Instrucciones:

1. Crear la base de datos con postgresSQL.

2. Restaurarla utilizando el Backup voluntariados.

3. Poblar la base de datos con load_data.py 
3.1 Para esto primero se debe actualizar linea 26 del archivo load_data.py "`return psycopg2.connect(user="postgres", password="Su contraseña", host="127.0.0.1", port="5432", database="Nombre de la base de datos usada")`". 

4. Cambiar la configuración de la bd en proyecto1 > src > main > java\cl\tbd\proyecto1 > repositories > DatabaseContext.java con el nombre de la base de datos y la respectiva contraseña.

# Para correr el proyecto

## Frontend
En la carpeta 'proyecto1_vue' ejecutar en una terminal:

    npm install
    npm run dev

Por defecto correrá en localhost:3000/

## Back end
En la carpeta 'proyecto1'  ejecutar en una terminal: 


    gradlew boot run

Por defecto correrá en localhost:8080/
