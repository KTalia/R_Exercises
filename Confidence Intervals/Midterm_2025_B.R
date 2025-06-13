x <- c( 3, 5, 3, 5, 5, 3, 3, 3, 3, 3, 2, 7, 3, 5, 6, 4, 4, 5, 4, 6, 4, 5, 2, 5, 4, 5, 3, 5, 4, 1, 6, 5, 4, 6, 4, 3, 6, 6, 3, 4, 4, 4, 5, 5, 1, 3, 5, 5, 7, 3)
 
# sigma = 2

n <- length(x) # 50

alpha <- 0.01


x_ <- mean(x) # 4.18

qnorm(alpha/2) # -2.58
qnorm(1 - alpha/2) # 2.58

z.test(
  x,
  sigma.x = 2,
  conf.level = 1-alpha
)$conf.int

# CI = (3.451445, 4.908555)