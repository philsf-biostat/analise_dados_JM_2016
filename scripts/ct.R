df <- read.csv2("dataset/DadosCaxumba.csv")
attach(df)

png("ct-4-graphs.png", 700, 700)
par(mfrow = c(2,2))

plot(CS.DILUIDO ~ Cx, xlim=c(0,40), ylim=c(0,40))
cx.cs.dil <- lm(CS.DILUIDO ~ Cx)
abline(cx.cs.dil)
r2 <- paste('R^2 =', round(summary(cx.cs.dil)$r.squared, 4))
text(15,2, r2)
rm(r2)

plot(CS.CONCENTRADO ~ Cx, xlim=c(0,40), ylim=c(0,40))
cx.cs.conc <- lm(CS.CONCENTRADO ~ Cx)
abline(cx.cs.conc)
r2 <- paste('R^2 =', round(summary(cx.cs.conc)$r.squared, 4))
text(15,2, r2)
rm(r2)

plot(CR.DILUIDO ~ Cx, xlim=c(0,40), ylim=c(0,40))
cx.cr.dil <- lm(CR.DILUIDO ~ Cx)
abline(cx.cr.dil)
r2 <- paste('R^2 =', round(summary(cx.cr.dil)$r.squared, 4))
text(15,2, r2)
rm(r2)

plot(CR.CONCENTRADO ~ Cx, xlim=c(0,40), ylim=c(0,40))
cx.cr.conc <- lm(CR.CONCENTRADO ~ Cx)
abline(cx.cr.conc)
r2 <- paste('R^2 =', round(summary(cx.cr.conc)$r.squared, 4))
text(15,2, r2)
rm(r2)

dev.off()

detach(df)
