mysummary <- function(x, digits = 2) {
  tt <- with(x, t.test(qPCR, Titulacao, paired = T))
  r <- with(x, cor(qPCR, Titulacao))
  mysummary <- list(Média = tt$estimate, IC = tt$conf.int, r = r)
  mysummary <- lapply(mysummary, round, digits)
  mysummary <- t(mysummary)
  rownames(mysummary) <- deparse(substitute(x))
  (mysummary)
}
