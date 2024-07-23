?dgamma
# Gamma Distribution
  # Changing the Beta

x = seq(0, 10, 0.001)

plot(x, dgamma(x, shape = 4, rate = 3))

curve(dgamma(x, shape = 4, rate = 5),
        add = TRUE, col = "red")

curve(dgamma(x, shape = 4, rate = 1),
        add = TRUE, col = "blue")

# Gamma Distribution
  # Changing the Alpha

x = seq(0, 10, 0.001)

plot(x, dgamma(x, shape = 2, rate = 1))

curve(dgamma(x, shape = 4, rate = 1),
        add = TRUE, col = "red")

curve(dgamma(x, shape = 0.2, rate = 1),
        add = TRUE, col = "blue")

?dchisq
# Chi-Squared Distribution
x = seq(0, 40, 0.001)

plot(x, dchisq(x, df = 5))

curve(dchisq(x, df = 1),
      add = TRUE, col = "blue")

curve(dchisq(x, df = 8),
      add = TRUE, col = "purple")

curve(dchisq(x, df = 20),
      add = TRUE, col = "red")

?dbeta
# Beta Distribution
  # Changing Alpha

x = seq(0, 1, 0.0005)

plot(x, dbeta(x, 1, 3))

curve(dbeta(x, 0.2, 3),
      add = TRUE, col = "green")

curve(dbeta(x, 0.5, 3),
      add = TRUE, col = "blue")

curve(dbeta(x, 0.8, 3),
      add = TRUE, col = "purple")

# Beta Distribution
  # Alpha + Beta = 8

x = seq(0, 1, 0.0005)

plot(x, dbeta(x, 1, 7))

curve(dbeta(x, 2, 6),
      add = TRUE, col = "red")

curve(dbeta(x, 3, 5),
      add = TRUE, col = "orange")

curve(dbeta(x, 4, 4),
      add = TRUE, col = "yellow", lwd = 2)

curve(dbeta(x, 5, 3),
      add = TRUE, col = "green")

curve(dbeta(x, 6, 2),
      add = TRUE, col = "blue")

curve(dbeta(x, 7, 1),
      add = TRUE, col = "purple")

?dweibull
# Weibull Distribution
  # Changing Beta
x = seq(0, 0.1, length = 100)

plot(x, dweibull(x, shape = 0.15, scale = 20))

curve(dweibull(x, shape = 0.15, scale = 1),
      add = TRUE, col = "green")

curve(dweibull(x, shape = 0.15, scale = 4),
      add = TRUE, col = "blue")

curve(dweibull(x, shape = 0.15, scale = 15),
      add = TRUE, col = "purple")

# Weibull Distribution
  # Changing Alpha
x = seq(0, 2, 0.0001)

plot(x, dweibull(x, shape = 8, scale = 1))

curve(dweibull(x, shape = 0.05, scale = 1),
      add = TRUE, col = "blue")

curve(dweibull(x, shape = 3, scale = 1),
      add = TRUE, col = "purple")

curve(dweibull(x, shape = 10, scale = 1),
      add = TRUE, col = "red")

