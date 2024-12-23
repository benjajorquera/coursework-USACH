### 1. Se descarga el archivo como tipo raw.

### 2. Se importan los datos del archivo, como es un archivo .csv de tipo Ingl�s,
### se utiliza la funci�n read.csv, luego se muestran las 6 primeras y �ltimas
### filas del conjunto de datos almacenado la variable "datos"

datos <- read.csv(file.choose(), encoding = "UTF-8")
head(datos)
tail(datos)

### El conjunto de datos, describe la cantidad de contagiados de COVID-19 en
### Chile.

### La funci�n str() muestra informaci�n del conjunto de datos.
str(datos)

### 3. 3.1. Se han cargado 17 observaciones de 611 variables, donde la primera 
### columna pertenece a las regiones de Chile, y las dem�s corresponden a fechas,
### por cada d�a existe una nueva columna, comenzando el 3/3/2020 y terminando
### el �ltimo d�a que fue actualizado el archivo, es decir hoy 2/11/2021.

### 3.2. El tipo de variables son: columna "Regi�n" de tipo chr o categ�ricas
### ordinales (ya que las regiones est�n ordenadas) y columnas de fechas de tipos
### num�ricas discretas, tomando valores enteros positivos.

### 3.3. Las observaciones de "Regi�n" tienen una escala ordinal, como se
### menciona anteriormente, y las de fechas parecen ser independientes y tener 
### una escala de raz�n, ya que el n�mero de contagiados de un d�a no parece 
### depender de otro, y cumplen con los atributos de escalas de intervalos 
### (datos discretos con una gran cantidad de niveles y escala ordinal) con su
### origen en un cero verdadero.

### Preguntas sala 8:

### Se importa el paquete dplyr, instal�ndolo de ser necesario.
if(!require(dplyr)){
  install.packages("dplyr", dependencies = TRUE)
  require(dplyr)
}

library(dbplyr)

### Se filtra el dataframe por la regi�n de los lagos, entre los periodos 
### 01/01/2021 y 30/06/2021, el nuevo dataframe queda guardado en la variable
### "los_lagos", la cual contiene una observaci�n de 181 variables.
los_lagos <- select(filter(datos, Region == "Los Lagos"), c("X2021.01.01":"X2021.06.30"))

### Utilizando el nuevo dataframe, aplicamos una funci�n para encontrar la
### columna que contiene el m�ximo de casos y guardamos su valor en la variable
### "max"
max <- colnames(los_lagos)[apply(los_lagos, 1, function(x) which(x==max(x)))]

### El d�a con el mayor n�mero de casos con s�ntomas en la regi�n de Los Lagos
### entre el 1 de enero y 30 de junio del 2021, fue el 22 de enero.

### Ahora se suman los valores de las columnas entre los periodos anteriores con
### rowSums, y se crea un nuevo dataframe con el nombre de las regiones y el 
### n�mero total de contagios entre los periodos.
total <- rowSums(datos[, which(colnames(datos) == "X2021.01.01"):which(colnames(datos) == "X2021.06.30")])
datos_periodo <- data.frame(Region = datos[,1], total)
