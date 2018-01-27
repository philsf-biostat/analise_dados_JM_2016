rm(list = ls())
df <- read.csv2("dataset/DadosRubeola.csv")
source("scripts/myplot.R")

# Objetivo: observar o ajuste do virus puro com as combinações biplex.
# Critério: R^2

png("figuras/ct-rubeola.png", 1000, 500)
par(mfrow = c(1,2))

with(df, myplot(Rp, CR.DILUIDO, xlim=c(0,40), ylim=c(0,40),
                xlab = "Ct Rubéola (puro)",
                ylab = "Ct Caxumba + Rubéola"))
title(main = "Mistura Diluída")

with(df, myplot(Rp, CR.CONCENTRADO, xlim=c(0,40), ylim=c(0,40),
                xlab = "Ct Rubéola (puro)",
                ylab = "Ct Caxumba + Rubéola"))
title(main = "Mistura Concentrada")

dev.off()
