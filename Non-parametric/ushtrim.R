freqs <- c(50,30,15,5)

p0 <- dgeom(0,0.8)
p1 <- dgeom(1,0.8)
p2 <- dgeom(2,0.8)
p3 <- 1 - (p0+p1+p2)

probs <- c(p0,p1,p2,p3)

result <- chisq.test(freqs,p=probs)

probs*100
