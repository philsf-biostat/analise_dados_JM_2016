mysummary <- function(x) {
  tt <- with(x, t.test(qPCR - Titulacao))
  r <- with(x, cor(qPCR, Titulacao))
  mysummary <- list(Média = tt$estimate, IC = tt$conf.int, r = r)
  mysummary <- t(mysummary)
  rownames(mysummary) <- deparse(substitute(x))
  (mysummary)
}
