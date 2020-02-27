# Joselyne Ailed Carranza Treviño
# Matrícula: 1843603


# Ejercicio 1 -------------------------------------------------------------

library(plyr)


accidentes <- c(0,1,0,2,2,1,4,3,0,1,5,1,2,3,4,0,1,1,3,4)
acc <- count(accidentes)
acc #BD creada con dos columnas


(acc$freq/sum(acc$freq)*100)
acc$rf <- acc$freq/sum(acc$freq)*100
acc


# ¿Cuál es el promedio de accidentes al mes?

mean(accidentes)
sum(accidentes)
boxplot(accidentes)

# ¿Qué número de accidentes reporta la mayor proporción?

# De acuerdo a la gráfica que yo genere, se reportan 6 meses con un accidente (30%).


barplot(acc$freq, names.arg = acc$x, main = "Accidentes en el aserradero", 
        col = "yellow")


  

# Ejercicio 2 -------------------------------------------------------------


especies <- c("F", "H", "F", "C", "F", "A", "H", "F",
              "H", "C", "A", "C", "F", "H", "H", "H",
              "F", "H", "A", "C", "F", "H", "H", "F")
esp <- count(especies)

esp
esp$rf <- esp$freq/sum(esp$freq)*100
esp



barplot(esp$freq, names.arg = esp$x, main = "Cantidad de especies", 
        col = "lightgreen")

# ¿Qué especie presenta mayor proporción (Anote su %)? 

# Según la gráfica, la especie con mayor proporción es la Tsuga Heterofila con porcentaje de 37.5%

# Ejercicio 3 -------------------------------------------------------------

library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")


# Encontrar la frecuencia de variables vecinos y especie


vecyesp <- table(conjunto$Vecinos, conjunto$Especie)

addmargins(as.table(vecyesp))


barplot(table(conjunto$Vecinos, conjunto$Especie),  main = "Vecinos y Especies", 
        col = "green")


# Ejercicio 4 -------------------------------------------------------------

altura <- conjunto$Altura
range(altura)


Intervalo <- seq(7.5, 22.5, by=5)
Intervalo

altura.table <-cut(altura, Intervalo)
table(altura.table)


par(mfrow=c(1,2))
hist(altura, main = "Datos sin intervalos definidos", 
     xlab = "Alturas", col = "mediumspringgreen")
hist(conjunto$Altura, breaks = Intervalo, 
     main = "Datos con intervalos definidos", 
     col = "maroon1")
par(mfrow=c(1,1))

# Ejercicio 5 -------------------------------------------------------------

Diametro <- conjunto$Diametro
range(Diametro)
  

Intervalo <- seq(7.5, 25.5, by=2.5)
Intervalo

par(mfrow=c(1,2))
hist(conjunto$Diametro, col = "pink",   main = "Sin modificar", xlab = "Diametro")
hist(conjunto$Diametro, breaks = Intervalo, col = "purple",   main = "Datos intervalos")
par(mfrow=c(1,1))

