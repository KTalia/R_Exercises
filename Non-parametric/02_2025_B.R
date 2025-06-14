# H_0: X has NB(3,0.7)
# H_a: X doesnt have NB(3,0.7)

alpha <- 0.1

p1 <- dnbinom(0,3,0.5) # P{X = 3 | H_0}

p2 <- dnbinom(1,3,0.5) # P{X = 4 | H_0}

p3 <- 1-(p1+p2)  # P{X>=5 | H_0}


freqs = c(50,65,85)
probs <- c(p1,p2,p3)
result <- chisq.test(freqs, p =probs)

alpha < res$p.value # FALSE

# the p value isnt bigger than alpha -> H_0 is not accepted -> X doesnt have NB(3,0.5)