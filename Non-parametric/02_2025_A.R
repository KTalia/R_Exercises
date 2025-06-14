# H_0: X has Geo(0.3)
# H_a: X doesnt have Geo(0.3)


alpha <- 0.05


p_0 <- pgeom(1,0.3) # P{X=0}+P{X=1}
p_1 <- dgeom(2,0.3) # P{X=3}
p_2 <- dgeom(3,0.3) # p{X=4}
p_3 <- 1-(p_0+p_1+p_2)

freqs <- c(20,45,20,15)
probs <- c(p_0,p_1,p_2,p_3)

res <- chisq.test(freqs, p = probs)

alpha < res$p.value  # FALSE

# The p-value is greater than alpha. H_0 is rejected. X doesnt have Geo(0.3)
res