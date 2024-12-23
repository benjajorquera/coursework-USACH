### Ejercicio pr�ctico 5 IME USACH
### Benjam�n Jorquera 19.182.719-8
### 06/11/2021

### Se importan los paquetes

library(tidyverse)
library(TeachingDemos)
library(ggpubr)
library(dplyr)
library(pwr)

### Enunciado Sala 8

### Se sabe que el proceso de fabricaci�n de barras de acero para concreto
### reforzado producen barras con medidas de dureza que siguen una distribuci�n
### normal con desviaci�n est�ndar de 10 kilogramos de fuerza por mil�metro
### cuadrado. Usando una muestra aleatoria de tama�o 50, un ingeniero quiere
### averiguar si una l�nea de producci�n est� generando barras con dureza media
### de 170 [kgf mm-2]

### Asignamos valores:

mu_barras <- 170
desv_st_barras <- 10
n <- 50

### Pregunta 1

### Si el ingeniero est� seguro que la verdadera dureza media no puede ser menor
### a los 170 [kgf mm-2] y piensa rechazar la hip�tesis nula cuando la muestra
### presente una media mayor a 174 [kgf mm-2], �cu�l es la probabilidad de que
### cometa un error de tipo 1?

### Soluci�n: Formulamos las hip�tesis:
### H0: La dureza media de las barras de acero es de 170 [kgf mm-2] (u_dif = 170)
### H1: La dureza media de las barras de acero es mayor a 174 [kgf mm-2] (u_dif > 174)

### Calculamos el error est�ndar:

err_st <- desv_st_barras / sqrt(n)

### Se calculan las regiones de rechazo unilaterales

alfa_1 <- pnorm(170, mean = mu_barras, sd = err_st, lower.tail = FALSE)
alfa_2 <- pnorm(174, mean = mu_barras, sd = err_st, lower.tail = FALSE)
print(alfa_1 + alfa_2)

### As� la probabilidad de cometer un error de tipo 1 es de 0.502 o 50.2%

### Pregunta 2

### Si la verdadera dureza media de la l�nea de producci�n fuera 173 [kgf mm-2],
### �cu�l ser�a la probabilidad de que el ingeniero, que obviamente no conoce
### este dato, cometa un error de tipo 2?

### Soluci�n: Asignamos los valores

media_efecto <- 173
alfa_poder <- 0.05

### Se calcula el poder estad�stico unilateral de acuerdo al an�lisis te�rico

poder_barras <- pnorm(174, mean = media_efecto, sd = err_st, lower.tail = FALSE)
  + pnorm(170, mean = media_efecto, sd = err_st, lower.tail = FALSE)

print(1 - poder_barras)

### As� la probabilidad de cometer un error de tipo 2 es de 76%

### Pregunta 3

### Como no se conoce la verdadera dureza media, genere un gr�fico del poder
### estad�stico con las condiciones anteriores, pero suponiendo que las
### verdaderas durezas medias podr�an variar de 170 a 178 [kgf mm-2].

### Graficar la distribuci�n muestral de la media de las diferencias si la
### hip�tesis nula fuera verdadera para 170 [kgf mm-2].

x1 <- seq(170 - 5.2 * err_st, 170 + 5.2 *err_st, 0.01)
y1 <- dnorm(x1, mean = 170, sd = err_st)
g1 <- ggplot(data = data.frame(x1, y1), aes(x1))

g1 <- g1 + stat_function(fun = dnorm,
                         args = list(mean = 170, sd = err_st),
                         colour = "red", size = 1)

### Colorear la regi�n de rechazo de la hip�tesis nula unilateral

Z_critico1 <- qnorm(alfa_poder/2, mean = 0, sd = err_st, lower.tail = FALSE)
q_critico_superior1 <- 170 + Z_critico1

g1 <- g1 + geom_area(data = subset(data.frame(x1, y1), x1 > q_critico_superior1),
                                   aes(x = x1, y = y1), colour = "red", fill = "red", alpha = 0.5)

### Graficar la distribuci�n muestral de la media de las diferencias si la
### hip�tesis nula fuera verdadera para 178 [kgf mm-2].

g1 <- g1 + stat_function(fun = dnorm, args = list(mean = 178, sd = err_st),
                         colour = "blue", size = 1)

x2 <- seq(178 - 5.2 * err_st, 178 + 5.2 * err_st, 0.01)
y2 <- dnorm(x2, mean = 178, sd = err_st)

### Colorear la regi�n de rechazo de la hip�tesis nula unilateral

Z_critico2 <- qnorm(alfa_poder/2, mean = 0, sd = err_st, lower.tail = FALSE)
q_critico_superior2 <- 178 + Z_critico2


g1 <- g1 + geom_area(data = subset(data.frame(x2, y2),
                                   x2 > q_critico_superior2),
                     aes(x = x2, y = y2), colour = "blue", fill = "blue",
                     alpha = 0.5)

### Configurar y mostrar los gr�ficos de poder con sus regiones coloreadas

g1 <- g1 + ylab("")
g1 <- g1 + scale_y_continuous(breaks = NULL)
g1 <- g1 + scale_x_continuous(name = "Diferencia dureza barras",
                              breaks = seq(160, 190, 2))
g1 <- g1 + theme_pubr()
print(g1)

### Pregunta 4

### �Cu�ntas barras deber�an revisarse para conseguir un poder estad�stico de
### 0,90 y un nivel de significaci�n de 0,05?

### Calculamos el tama�o de la muestra con power.t.test()

poder1 <- power.t.test(n = NULL, delta = 4, sd = desv_st_barras,
                       sig.leve = 0.05, power = 0.9, type = "one.sample",
                       alternative = "two.sided")

n1 <- ceiling(poder1[["n"]])
print(n1)

### El n�mero de barras que deber�an revisarse son 68.

### Pregunta 5

### �Y si quisiera ser bien exigente y bajar la probabilidad de cometer un error
### de tipo 1 a un 1% solamente?

poder2 <- power.t.test(n = NULL, delta = 4, sd = desv_st_barras,
                       sig.leve = 0.01, power = 0.9, type = "one.sample",
                       alternative = "two.sided")

n2 <- ceiling(poder2[["n"]])
print(n2)

### El n�mero de barras que deber�an revisarse son 97.