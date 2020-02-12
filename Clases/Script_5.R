
# Normalidad --------------------------------------------------------------

library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

# Aplicar prueba de Shapiro.test para la variable Altura

shapiro.test(conjunto$Altura)

ks.test(conjunto$Diametro, "pnorm", 
        mean=mean(conjunto$Diametro, 
                  sd=sd(conjunto$Diametro)))

hist(conjunto$Diametro)
