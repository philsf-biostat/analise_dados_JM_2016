## setup ####
rm(list = ls())
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

## retirando títulos nulos ####
Sp001 <- Sp001[Titulacao!=0,]
Sp0001 <- Sp0001[Titulacao!=0,]
Cx001 <- Cx001[Titulacao!=0,]
Cx0001 <- Cx0001[Titulacao!=0,]

## Sarampo MOI 0,01 ####
png("figuras/mc_sp_001_AB.png", 1000, 500)
par(mfrow = c(1,2))
with(Sp001[Cinetica == "A"], myplot(qPCR, Titulacao, ylab = "Titulação (log10 PFU/mL)", xlab = "qPCR (log10 cópias/mL)", ylim = c(0,7), xlim = c(5,11) ))
title("Sarampo MOI 0,01")
mtext("Cinética: A")
with(Sp001[Cinetica == "B"], myplot(qPCR, Titulacao, ylab = "Titulação (log10 PFU/mL)", xlab = "qPCR (log10 cópias/mL)", ylim = c(0,7), xlim = c(5,11) ))
title("Sarampo MOI 0,01")
mtext("Cinética: B")
dev.off()

png("figuras/mc_sp_001_pool.png", 600, 600)
with(Sp001, myplot(qPCR, Titulacao, ylab = "Titulação (log10 PFU/mL)", xlab = "qPCR (log10 cópias/mL)", ylim = c(0,7), xlim = c(5,11) ))
title("Sarampo MOI 0,01")
mtext("Cinética: pool")
dev.off()

## Sarampo MOI 0,001 ####
png("figuras/mc_sp_0001_AB.png", 1000, 500)
par(mfrow = c(1,2))
with(Sp0001[Cinetica == "A"], myplot(qPCR, Titulacao, ylab = "Titulação (log10 PFU/mL)", xlab = "qPCR (log10 cópias/mL)", ylim = c(0,7), xlim = c(5,11) ))
title("Sarampo MOI 0,001")
mtext("Cinética: A")
with(Sp0001[Cinetica == "B"], myplot(qPCR, Titulacao, ylab = "Titulação (log10 PFU/mL)", xlab = "qPCR (log10 cópias/mL)", ylim = c(0,7), xlim = c(5,11) ))
title("Sarampo MOI 0,001")
mtext("Cinética: B")
dev.off()

png("figuras/mc_sp_0001_pool.png", 600, 600)
with(Sp0001, myplot(qPCR, Titulacao, ylab = "Titulação (log10 PFU/mL)", xlab = "qPCR (log10 cópias/mL)", ylim = c(0,7), xlim = c(5,11) ))
title("Sarampo MOI 0,001")
mtext("Cinética: pool")
dev.off()

## Caxumba MOI 0,01 ####
png("figuras/mc_cx_001_AB.png", 1000, 500)
par(mfrow = c(1,2))
with(Cx001[Cinetica == "A"], myplot(qPCR, Titulacao, ylab = "Titulação (log10 PFU/mL)", xlab = "qPCR (log10 cópias/mL)", ylim = c(0,5), xlim = c(4,10) ))
title("Caxumba MOI 0,01")
mtext("Cinética: A")
with(Cx001[Cinetica == "B"], myplot(qPCR, Titulacao, ylab = "Titulação (log10 PFU/mL)", xlab = "qPCR (log10 cópias/mL)", ylim = c(0,5), xlim = c(4,10) ))
title("Caxumba MOI 0,01")
mtext("Cinética: B")
dev.off()

png("figuras/mc_cx_001_pool.png", 600, 600)
with(Cx001, myplot(qPCR, Titulacao, ylab = "Titulação (log10 PFU/mL)", xlab = "qPCR (log10 cópias/mL)", ylim = c(0,5), xlim = c(4,10) ))
title("Caxumba MOI 0,01")
mtext("Cinética: pool")
dev.off()

## Caxumba MOI 0,001 ####
png("figuras/mc_cx_0001_AB.png", 1000, 500)
par(mfrow = c(1,2))
with(Cx0001[Cinetica == "A"], myplot(qPCR, Titulacao, ylab = "Titulação (log10 PFU/mL)", xlab = "qPCR (log10 cópias/mL)", ylim = c(0,5), xlim = c(4,11) ))
title("Caxumba MOI 0,001")
mtext("Cinética: A")
with(Cx0001[Cinetica == "B"], myplot(qPCR, Titulacao, ylab = "Titulação (log10 PFU/mL)", xlab = "qPCR (log10 cópias/mL)", ylim = c(0,5), xlim = c(4,11) ))
title("Caxumba MOI 0,001")
mtext("Cinética: B")
dev.off()

png("figuras/mc_cx_0001_pool.png", 600, 600)
with(Cx0001, myplot(qPCR, Titulacao, ylab = "Titulação (log10 PFU/mL)", xlab = "qPCR (log10 cópias/mL)", ylim = c(0,5), xlim = c(4,11) ))
title("Caxumba MOI 0,001")
mtext("Cinética: pool")
dev.off()
