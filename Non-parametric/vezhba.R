alpha <- 0.05

freqs<-c(20,45,20,15)


p_0 <- pgeom(1,0.3)
p_1 <- dgeom(2,0.3) 
p_2 <- dgeom(3,0.3) 
p_3 <- 1- (p_0+p_1+p_2)
p_3


probs <- c(p_0, p_1, p_2, p_3)

result <- chisq.test(freqs, p=probs)

result
alpha < result$p.value
