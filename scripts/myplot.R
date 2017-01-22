myplot <- function(x, y, xlim = NULL, ylim = NULL, xlab = NULL, ylab = NULL, digits = 4) {
  x.name <- deparse(substitute(x))
  y.name <- deparse(substitute(y))
  if (is.null(xlab)) xlab <- x.name
  if (is.null(ylab)) ylab <- y.name
  modelo <- lm(y ~ x)
  r2 <- paste('R^2 =', round(summary(modelo)$r.squared, digits))
  coefs <- round(modelo$coefficients, digits)
  eqn <- paste(y.name,"=",coefs[2],x.name,"+",coefs[1])
 ols.col <- "blue"
  plot(y ~ x,
       xlim = xlim,
       ylim = ylim,
       xlab = xlab,
       ylab = ylab,
       )
  abline(modelo,
         col = ols.col,
         )
  text(30, 14, eqn, col = ols.col, adj = 1)
  text(30, 13, r2, col = ols.col, adj = 1)
}
