## setup ####
library(xlsx)
library(data.table)

source("scripts/myplot.R")

## input ####
Sp001 <- read.xlsx("dataset/Dados_PCR_Tit.xlsx", "SARAMPO MOI 0,01")
Sp0001 <- read.xlsx("dataset/Dados_PCR_Tit.xlsx", "SARAMPO MOI 0,001")
Cx001 <- read.xlsx("dataset/Dados_PCR_Tit.xlsx", "CAXUMBA MOI 0,01")
Cx0001 <- read.xlsx("dataset/Dados_PCR_Tit.xlsx", "CAXUMBA MOI 0,001")
Sp001 <- as.data.table(Sp001)
Sp0001 <- as.data.table(Sp0001)
Cx001 <- as.data.table(Cx001)
Cx0001 <- as.data.table(Cx0001)

## Sarampo MOI 0,01 ####
with(Sp001[Cinetica == "A"], myplot(Titulacao, qPCR, xlab = "Titulação (log10 PFU/mL)", ylab = "qPCR (log10 cópias/mL)"))
title("Sarampo MOI 0,01")
mtext("Cinética: A")
with(Sp001[Cinetica == "B"], myplot(Titulacao, qPCR, xlab = "Titulação (log10 PFU/mL)", ylab = "qPCR (log10 cópias/mL)"))
title("Sarampo MOI 0,01")
mtext("Cinética: B")
with(Sp001, myplot(Titulacao, qPCR, xlab = "Titulação (log10 PFU/mL)", ylab = "qPCR (log10 cópias/mL)"))
title("Sarampo MOI 0,01")
mtext("Cinética: pool")

## Sarampo MOI 0,001 ####
with(Sp0001, myplot(Titulacao, qPCR, xlab = "Titulação (log10 PFU/mL)", ylab = "qPCR (log10 cópias/mL)"))
title("Sarampo MOI 0,001")
mtext("Cinética: pool")

## Caxumba MOI 0,01 ####
with(Cx001, myplot(Titulacao, qPCR, xlab = "Titulação (log10 PFU/mL)", ylab = "qPCR (log10 cópias/mL)"))
title("Caxumba MOI 0,01")
mtext("Cinética: pool")

## Caxumba MOI 0,001 ####
with(Cx0001, myplot(Titulacao, qPCR, xlab = "Titulação (log10 PFU/mL)", ylab = "qPCR (log10 cópias/mL)"))
title("Caxumba MOI 0,001")
mtext("Cinética: pool")
