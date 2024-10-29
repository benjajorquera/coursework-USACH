# Benjamín Jorquera 19182719-8

library(tidyverse)
library(ggpubr)
library(ez)
library(datasets)
library(DescTools)
library(nlme)
library(emmeans)
library(readxl)
library(boot)

#Los datos son convertidos a un dataframe
datos_tareas <- read.table(textConnection(texto_tareas), header = TRUE)

#El dataframe es convertido a formato largo
datos_tareas <- datos_tareas %>% pivot_longer(c("words", "colors", "interfer"),
                                              names_to = "tarea", values_to = "tiempo")

#Se crea la variable categórica "instancia"
instancias_tareas <- factor(1:16)
datos_tareas <- data.frame(datos_tareas, instancias_tareas)

#Se convierte la variable tarea a tipo categórica
datos_tareas[["tarea"]] <- factor(datos_tareas[["tarea"]])

#1. La escala con que se mide la variable dependiente tiene las propiedades
#de una escala de intervalos iguales. Esto se cumple ya que la variable X es una
#magnitud física, por lo tanto, tiene una escala de intervalos iguales.

#2. Las mediciones son independientes al interior de cada grupo. Se cumple ya
#que cada observación representa una instancia diferente de tiempo entre cada tarea,
#por lo tanto son independientes.

#3. Test de Shapiro para condición de normalidad
prueba <- shapiro.test(datos$variable)
print(prueba) 
#Se obtiene un p-value > 0.05, por lo que cumple con la normalidad

#e puede suponer razonablemente que la(s) poblacione(s) de origen sigue(n)
#una distribución normal. Para comprobar esta condición se utilizarán gráficos
#Q-Q para cada tarea:

gqq_tareas <- ggqqplot(datos_tareas, x = "tiempo", y = "tarea", color = "tarea")
gqq_tareas <- gqq_tareas + facet_wrap(~ tarea) + 
  rremove("x.ticks") + rremove("x.text") + 
  rremove("y.ticks") + rremove("y.text") + 
  rremove("axis.title")
print(gqq_tareas)

#Se puede observar que no se observan valores que puedan ser considerados
#atípicos, por lo tanto, se puede suponer razonablemente que las distribuciones
#se asemejan a la normal.

#4. La matriz de varianzas-covarianzas es esférica, es decir, las varianzas
#entre los diferentes niveles de las medidas repetidas deben ser iguales.
#Esta condición será comprobada al realizar el procedimiento ANOVA con
#ezANOVA().

#Procedimiento ANOVA
prueba_tareas <- ezANOVA( data = datos_tareas , dv = tiempo , within = tarea ,
                          wid = instancias_tareas , return_aov = TRUE )
print(prueba_tareas)

#Respuesta:
#El resultado de la prueba es esfericidad de Mauchly entrega un valor de p
#muy alto (p = 0.433), por lo tanto, se cumple la cuarta y última condición
#de esfericidad (hipótesis nula de la prueba Mauchly).

#Gráfico de tamañoo del efecto:
gefecto_tareas <- ezPlot(data = datos_tareas, dv = tiempo, wid = instancias_tareas,
                         within = tarea, y_lab = "Tiempo promedio de reacci?n",
                         x = tarea)
print(gefecto_tareas)

#Respuesta
#Ahora, el p valor de la prueba ANOVA es muy bajo (p = 3.019789e-12), por lo tanto,
#se puede concluir en base a la evidencia utilizada, que se rechaza la hipótesis
#nula a favor de la alternativa con un 95% de confianza, es decir, del tiempo
#de reacción entre las tareas es distinto para al menos una de ellas. Además,
#el gráfico de tamaño del efecto muestra una diferencia entre los tiempos
#promedio de reacción de las tareas "color" y "word" con "interfer".