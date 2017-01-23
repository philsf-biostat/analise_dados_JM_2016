df <- read.csv2("dataset/DadosCaxumba.csv")
attach(df)
source("scripts/myplot.R")

# Objetivo: observar o ajuste do virus puro com as combinações biplex.
# Critério: R^2

png("figuras/ct-caxumba.png", 800, 800)
par(mfrow = c(2,2))

with(df, myplot(Cx, CS.DILUIDO, xlim=c(10,30), ylim=c(0,40),
       xlab = "Ct Caxumba (puro)",
       ylab = "Ct Caxumba + Sarampo") )
title(main = "Mix qPCR Diluído")

with(df, myplot(Cx, CS.CONCENTRADO, xlim=c(10,30), ylim=c(0,40),
     xlab = "Ct Caxumba (puro)",
     ylab = "Ct Caxumba + Sarampo") )
title(main = "Mix qPCR Concentrado")

with(df, myplot(Cx, CR.DILUIDO, xlim=c(10,30), ylim=c(0,40),
                xlab = "Ct Caxumba (puro)",
                ylab = "Ct Caxumba + Rubéola"))
title(main = "Mix qPCR Diluído")

with(df, myplot(Cx, CR.CONCENTRADO, xlim=c(10,30), ylim=c(0,40),
                xlab = "Ct Caxumba (puro)",
                ylab = "Ct Caxumba + Rubéola"))
title(main = "Mix qPCR Concentrado")

dev.off()

detach(df)
