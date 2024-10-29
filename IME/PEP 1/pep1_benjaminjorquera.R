# Run 191827198

install.packages("tidyverse")
                 
### Librerías utilizadas

library("dplyr")
library("tidyverse")

### Se cargan los datos del dataset Star Wars y se revisa su estructura
datos <- read.csv2(file.choose(), encoding = "UTF-8")
str(datos)

### Pregunta 1:

### Se formulan las hipótesis:
### H0: el cantidad de reclutas hombres es 70%
### H1: el cantidad de reclutas hombres no es 70%

### Matemáticamente:
### H0: p = 70%
### H1: p != 70%

### Se toma una muestra aleatoria de 40 reclutas y filtramos por la columna sexo:

set.seed(523)
datos_pregunta1 <- sample_n(datos, 40)
datos_pregunta1 <- datos_pregunta1 %>% select(sexo)

### Se utilizará la prueba de Wilson con un nivel de confianza de 95% para 
### comprobar lo anterior, para esto se deben cumplir las siguientes condiciones:

### 1. La muestra que se analizará comprende menos del 10% del total de
### observaciones (40 < 372), además se sabe que fueron tomadas aleatoriamente, 
### por lo tanto, las observaciones son independientes. 
### 2. Para comprobar que hay al menos 10 éxitos y 10 fracasos, se debe contar
### la cantidad de hombres y mujeres de la muestra:

cant_hombres <- datos_pregunta1 %>% filter(sexo == "M")
cant_mujeres <- datos_pregunta1 %>% filter(sexo == "F")

### Como hay al menos 10 éxito y 10 fracasos, se cumple la segunda condición.

### Realizamos la prueba:

n <- length(datos_pregunta1$sexo)
alfa <- 0.05
valor_nulo <- 0.7

prueba <- prop.test(length(cant_hombres), n = n, p = valor_nulo,
                    alternative = "two.sided", conf.level = 1 - alfa)

print(prueba)

### Luego de ejecutar la prueba, observamos un p valor de 2.2e-16, mucho menor 
### al nivel de significancia 0.05, por lo tanto, se rechaza la hipótesis nula
### a favor de la alternativa con un 95% de confianza, lo que quiere decir que
### la proporción de hombres reclutados no es del 70%.

