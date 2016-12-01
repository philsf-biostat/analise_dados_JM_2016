# library(xlsx)
# df <- read.xlsx("PCRxTITULACAO.xlsx",1)
# write.csv2(df[c(1,4,3)], "PCRxTITULACAO.csv", row.names = F)
# write.csv2(df, "PCRxTITULACAO.csv", row.names = F)

# df <- read.csv2("PCRxTITULACAO.csv")

library(xlsx)

df <- read.xlsx("dataset/Dados_PCR_Tit.xlsx", 1)

df <- read.xlsx("dataset/Dados_PCR_Tit.xlsx", 3)


library(MethComp)
mcdf <- Meth(df, meth = "Metodo", y = "Quantidade", item = "Coleta")
# mcdf <- Meth(df, meth = "Metodo", y = "Stuff.log", item = "Coleta")
levels(mcdf$meth) <- list(REF = "Titulacao", NEW = "qPCR")
source("../Documents/LATEV/bridging/bridging-analysis.R")
source("../Documents/LATEV/bridging/plots.R")
source("../Documents/LATEV/bridging/cleanup.R")

qual.cutoff <- 2
quant.log <- FALSE
round(quant.results, 2)
qual.results
