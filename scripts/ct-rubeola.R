df <- read.csv2("dataset/DadosRubeola.csv")
attach(df)

# Objetivo: observar o ajuste do virus puro com as combinações biplex.
# Critério: R^2

png("figuras/ct-rubeola.png", 700, 350)
par(mfrow = c(1,2))

plot(CR.DILUIDO ~ Rp, xlim=c(0,40), ylim=c(0,40),
     xlab = "Ct Rubéola (puro)",
     ylab = "Ct Caxumba + Rubéola",
     main = "Mix qPCR Diluído")
rp.cs.dil <- lm(CR.DILUIDO ~ Rp)
abline(rp.cs.dil)
r2 <- paste('R^2 =', round(summary(rp.cs.dil)$r.squared, 4))
text(15,2, r2)
rm(r2)

plot(CR.CONCENTRADO ~ Rp, xlim=c(0,40), ylim=c(0,40),
     xlab = "Ct Rubéola (puro)",
     ylab = "Ct Caxumba + Rubéola",
     main = "Mix qPCR Concentrado")
rp.cs.conc <- lm(CR.CONCENTRADO ~ Rp)
abline(rp.cs.conc)
r2 <- paste('R^2 =', round(summary(rp.cs.conc)$r.squared, 4))
text(15,2, r2)
rm(r2)

dev.off()

detach(df)