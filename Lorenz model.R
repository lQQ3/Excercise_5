a    <- -8/3 ; b <- -10; c <- 28
yini <- c(X = 1, Y = 1, Z = 1)
Lorenz <- function (t, y, parms) {
  with(as.list(y), {
    dX <- a * X + Y * Z
    dY <- b * (Y - Z)
    dZ <- -X * Y + c * Y - Z
    list(c(dX, dY, dZ))
  })
}
times <- seq(from = 0, to = 100, by = 0.01)
out   <- ode(y = yini, times = times, func = Lorenz, parms = NULL)
plot(out, lwd = 2)
plot(out[,"X"], out[,"Y"], type = "l", xlab = "X",
     ylab = "Y", main = "butterfly")