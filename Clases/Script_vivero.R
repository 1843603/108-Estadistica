#Joselyne Ailed Carranza Treviño

#Matrícula: 1843603

#Fecha: 11.03.2020






# Importar datos ----------------------------------------------------------

vivero <- read.csv("vivero.csv", header = T)

summary(vivero)


boxplot(vivero$IE ~ vivero$Tratamiento, col = "coral", xlab = "Tratamientos", ylab = "IE")



# Prueba de T -------------------------------------------------------------

t.test(vivero$IE ~ vivero$Tratamiento, var.equal = T)




