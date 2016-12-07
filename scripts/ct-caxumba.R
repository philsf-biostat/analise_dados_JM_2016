df <- read.csv2("dataset/DadosCaxumba.csv")
attach(df)

# Objetivo: observar o ajuste do virus puro com as combinações biplex.
# Critério: R^2

png("figuras/ct-caxumba.png", 700, 700)
par(mfrow = c(2,2))

plot(CS.DILUIDO ~ Cx, xlim=c(0,40), ylim=c(0,40),
     xlab = "Ct Caxumba (puro)",
     ylab = "Ct Caxumba + Sarampo",
     main = "Mix qPCR Diluído")
cx.cs.dil <- lm(CS.DILUIDO ~ Cx)
abline(cx.cs.dil)
r2 <- paste('R^2 =', round(summary(cx.cs.dil)$r.squared, 4))
text(15,2, r2)
rm(r2)

plot(CS.CONCENTRADO ~ Cx, xlim=c(0,40), ylim=c(0,40),
     xlab = "Ct Caxumba (puro)",
     ylab = "Ct Caxumba + Sarampo",
     main = "Mix qPCR Concentrado")
cx.cs.conc <- lm(CS.CONCENTRADO ~ Cx)
abline(cx.cs.conc)
r2 <- paste('R^2 =', round(summary(cx.cs.conc)$r.squared, 4))
text(15,2, r2)
rm(r2)

plot(CR.DILUIDO ~ Cx, xlim=c(0,40), ylim=c(0,40),
     xlab = "Ct Caxumba (puro)",
     ylab = "Ct Caxumba + Rubéola",
     main = "Mix qPCR Diluído")
cx.cr.dil <- lm(CR.DILUIDO ~ Cx)
abline(cx.cr.dil)
r2 <- paste('R^2 =', round(summary(cx.cr.dil)$r.squared, 4))
text(15,2, r2)
rm(r2)

plot(CR.CONCENTRADO ~ Cx, xlim=c(0,40), ylim=c(0,40),
     xlab = "Ct Caxumba (puro)",
     ylab = "Ct Caxumba + Rubéola",
     main = "Mix qPCR Concentrado")
cx.cr.conc <- lm(CR.CONCENTRADO ~ Cx)
abline(cx.cr.conc)
r2 <- paste('R^2 =', round(summary(cx.cr.conc)$r.squared, 4))
text(15,2, r2)
rm(r2)

dev.off()

detach(df)
