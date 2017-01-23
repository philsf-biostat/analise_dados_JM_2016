df <- read.csv2("dataset/DadosSarampo.csv")
source("scripts/myplot.R")

# Objetivo: observar o ajuste do virus puro com as combinações biplex.
# Critério: R^2

png("figuras/ct-sarampo.png", 700, 350)
par(mfrow = c(1,2))

with(df, myplot(Sp, CS.DILUIDO, xlim=c(0,40), ylim=c(0,40),
                xlab = "Ct Sarampo (puro)",
                ylab = "Ct Caxumba + Sarampo"))
title(main = "Mix qPCR Diluído")

with(df, myplot(Sp, CS.CONCENTRADO, xlim=c(0,40), ylim=c(0,40),
                xlab = "Ct Sarampo (puro)",
                ylab = "Ct Caxumba + Sarampo"))
title(main = "Mix qPCR Concentrado")

dev.off()
