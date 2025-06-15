# H0: X has B(4, 0.5)
# Ha: X doesn't have B(4, 0.5)


freqs <- c(6,34,67,41,12) 

help(dbinom)

p0 <- dbinom(0, 4, 0.5)
p1 <- dbinom(1, 4, 0.5)
p2 <- dbinom(2, 4, 0.5)
p3 <- dbinom(3, 4, 0.5)
p4 <- dbinom(4, 4, 0.5)


probs <- c(p0,p1,p2,p3,p4)

res <-chisq.test(freqs, p=probs)

alpha < res$p.value # True. The coin is fair