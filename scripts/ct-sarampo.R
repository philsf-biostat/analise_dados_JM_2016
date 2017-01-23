df <- read.csv2("dataset/DadosSarampo.csv")
attach(df)
source("scripts/myplot.R")

# Objetivo: observar o ajuste do virus puro com as combinações biplex.
# Critério: R^2

png("figuras/ct-sarampo.png", 700, 350)
par(mfrow = c(1,2))

plot(CS.DILUIDO ~ Sp, xlim=c(0,40), ylim=c(0,40),
     xlab = "Ct Sarampo (puro)",
     ylab = "Ct Caxumba + Sarampo",
     main = "Mix qPCR Diluído")
sp.cs.dil <- lm(CS.DILUIDO ~ Sp)
abline(sp.cs.dil)
r2 <- paste('R^2 =', round(summary(sp.cs.dil)$r.squared, 4))
text(15,2, r2)
rm(r2)

plot(CS.CONCENTRADO ~ Sp, xlim=c(0,40), ylim=c(0,40),
     xlab = "Ct Sarampo (puro)",
     ylab = "Ct Caxumba + Sarampo",
     main = "Mix qPCR Concentrado")
sp.cs.conc <- lm(CS.CONCENTRADO ~ Sp)
abline(sp.cs.conc)
r2 <- paste('R^2 =', round(summary(sp.cs.conc)$r.squared, 4))
text(15,2, r2)
rm(r2)

dev.off()

detach(df)
