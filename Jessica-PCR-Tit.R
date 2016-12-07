# library(xlsx)
# df <- read.xlsx("PCRxTITULACAO.xlsx",1)
# write.csv2(df[c(1,4,3)], "PCRxTITULACAO.csv", row.names = F)
# write.csv2(df, "PCRxTITULACAO.csv", row.names = F)

# df <- read.csv2("PCRxTITULACAO.csv")

library(xlsx)

df <- read.xlsx("dataset/Dados_PCR_Tit.xlsx", 1) # Sarampo MOI 0.01

df <- read.xlsx("dataset/Dados_PCR_Tit.xlsx", 3) # Caxumba MOI 0.01

# qual.cutoff <- 2
quant.log <- FALSE

library(MethComp)
mcdf <- Meth(df, meth = "Metodo", y = "Quantidade", item = "Coleta")
# mcdf <- Meth(df, meth = "Metodo", y = "Stuff.log", item = "Coleta")
levels(mcdf$meth) <- list(REF = "Titulacao", NEW = "qPCR")
source("../Documents/LATEV/bridging/bridging-analysis.R")
source("../Documents/LATEV/bridging/plots.R")
source("../Documents/LATEV/bridging/cleanup.R")

round(quant.results, 2)
qual.results

attach(wmcdf)
png("figuras/analises2-full.png", width = 1200, height = 700)

attach(wmcdf.dp)
png("figuras/analises2-incompleto.png", width = 1200, height = 700)

par(mfrow = c(1,2))
plot(NEW ~ REF, xlab = "Titulacao", ylab = "qPCR", sub = "Caxumba (MOI 0,01)", xlim = c(0,5), ylim = c(4.5, 9.5))
abline(dem.model[1:2], lwd = 2, col = "green")
title("Regressão de Deming")
plot(NEW ~ REF, xlab = "Titulacao", ylab = "qPCR", sub = "Caxumba (MOI 0,01)", xlim = c(0,5), ylim = c(4.5, 9.5))
abline(lm(NEW ~ REF), lwd= 1, col = "red")
title("Regressão Linear Simples")
dev.off()

detach()
