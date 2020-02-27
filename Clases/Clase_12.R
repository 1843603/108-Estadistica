# Joselyne Ailed Carranza Treviño
# Matrícula: 1843603
# Fecha: 27.02.2020



# Importar datos de Cedro rojo --------------------------------------------
setwd("C:/Tareas/108-Estadistica/Clases")
CR <- read.csv("Cedrorojo.csv", header = T)



summary(CR)



# Muestra -----------------------------------------------------------------

# Media teoretica de la variable "Diametro"
# establecida por CONAFOR para Cedro rojo es igual a 13

# Comparar la media observada de la variable diametro para
# las plantulas producidad en vivero (media=12.524, valores observados).

# "mu" debe ser igual a la variable teoretica



t.test(CR$diametro, mu=13)



# Media teoretica de la variable "Altura"
# establecida por CONAFOR para Cedro rojo es igual a 20

# Comparar la media observada de la variable altura para
# las plantulas producidad en vivero (altura=18.91, valores observados).

# "mu" debe ser igual a la variable teoretica


t.test(CR$altura, mu=20)

t.test(CR$altura, mu=19)

