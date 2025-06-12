x<- c(120, 125, 130, 110, 115, 140, 135, 128, 122, 118, 132, 140, 138, 121, 133, 130, 126, 127, 129, 119, 136, 125, 123, 131, 124, 137, 139, 120, 128, 132, 125, 100, 101, 102, 103)

length(x) # 35

alpha <- 0.05

# H_0: mu = 95
# H_a: mu > 95

# unknown variance, n>30 --> use z test

x_ <- mean(x) # 124.6857

sd_x <- sd(x) # 11.07135

z0 <- 15.86284 

qnorm(1-alpha) # 1.644854

# C = (1.644854, +inf)

res <- z.test(
  x,
  alternative = "greater",
  mu = 95,
  sigma.x = sd_x,
  conf.level = 1-alpha
)

alpha < res$p.value # FALSE

# H_0 is rejected i.e. Очекуваната маса откупено златко се зголемила.

