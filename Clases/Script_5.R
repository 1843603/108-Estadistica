
# Normalidad --------------------------------------------------------------

library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

# Aplicar prueba de Shapiro.test para la variable Altura

shapiro.test(conjunto$Altura)

shapiro.test(conjunto$Diametro)
hist(conjunto$Diametro)

boxplot(conjunto$Diametro ~ conjunto$Especie, col= "grey")

boxplot(conjunto$Vecinos ~ conjunto$Especie, col= "grey")

boxplot(conjunto$Altura ~ conjunto$Especie, col= "grey")

frecu <-table(conjunto$Clase)
prop.table(frecu)
hist(frecu)

boxplot(conjunto$Clase ~ conjunto$Especie)

var(conjunto$Diametro)
var(conjunto$Altura)




# Datos ebanos ------------------------------------------------------------

Ebano <- read.csv("Clases/ebanos2.csv", header = T)

hist(Ebano$diametro)
hist(Ebano$altura)

boxplot(Ebano$diametro)
boxplot(Ebano$altura)



fivenum(Ebano$diametro)


# ¿Cuántos individuos tienen un Diam menor al 1er quartil? ----------------


sum(Ebano$diametro <= 15.55)


# ¿Cuántos individuos tienen un Diam menor al 3er quartil? ----------------

sum(Ebano$diametro <= 34.25)

# ¿Cuantos individuos tienen un diametro mayor al 1er quartil
# pero menor o igual al 2do quartil?


sum(Ebano$diametro >= 15.55 & Ebano$diametro <= 25.90)


sum(Ebano$diametro <= 25.9)


# ¿Cuantos individuos tienen un diametro mayor al 1er quartil
# pero menor o igual al 3er quartil?


sum(Ebano$diametro >= 10 & Ebano$diametro <= 15.55)






ks.test(conjunto$Diametro, "pnorm", 
        mean=mean(conjunto$Diametro, 
                  sd=sd(conjunto$Diametro)))




