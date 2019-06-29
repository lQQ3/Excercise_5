# Differential equation comprising one variable
# Shawn Rice
# 5/19/2018

r <- 1 ; K <- 10
yini <- c(y = 2)
derivs <- function(t, y, parms)
  list(r * y * (1-y/K))
times <- seq(from = 0, to = 20, by = 0.2)
out <- ode(y = yini, times = times, func = derivs,
           parms = NULL)
head(out, n = 3)

yini <- c(y = 12)
out2 <- ode(y = yini, times = times, func = derivs, 
            parms = NULL)

plot(out, out2, main = "logistic growth", lwd = 2)