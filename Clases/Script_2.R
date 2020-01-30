# Joselyne Ailed Carranza Treviño
# Matrícula: 1843603
# 30.01.2020 


# Importar datos ----------------------------------------------------------

Bd.ebanos <- read.csv("Clases/ebanos2.csv" , header = TRUE)
head(Bd.ebanos)
summary(Bd.ebanos)

mean(Bd.ebanos$diametro)
mean(Bd.ebanos$altura)

sd(Bd.ebanos$diametro)
sd(Bd.ebanos$altura)


boxplot(Bd.ebanos$diametro, ylab="Diámetro en (cm)" , col = "red" , main= "Diámetro de plántulas de Ébano")
boxplot(Bd.ebanos$altura, ylab="Altura en (cm)" , col = "pink" , main= "Altura de plántulas de Ébano")


stem(Bd.ebanos$diametro)
stem(Bd.ebanos$altura)


hist(Bd.ebanos$diametro, col = "green" , xlab ="Diámetro (cm)", ylab="Frecuencia" , 
     main="Histograma de diámetro")



# Condicionantes ----------------------------------------------------------

# ¿Cuántos individuos tienen un diámetro menor que la media?

sum(Bd.ebanos$diametro < mean(Bd.ebanos$diametro))



# ¿Cuántos individuos tienen un diámetro mayor que la media?
sum(Bd.ebanos$diametro > mean(Bd.ebanos$diametro))

sum(Bd.ebanos$diametro > 30)



# ¿Existirá una observación igual a la media?
sum(Bd.ebanos$diametro == mean(Bd.ebanos$diametro))


" subconjunto de datos subset"

ebanos.30 <- subset(Bd.ebanos, 
                    Bd.ebanos$diametro > 30)
