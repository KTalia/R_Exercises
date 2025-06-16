set.seed(123)  # for reproducibility

# Generate for x
x <- rnorm(10, mean = 70, sd = 5.7)

# Adjust to match exactly the mean
x <- x - mean(x) + 70

# Adjust to match exactly the standard deviation
current_sd <- sd(x)
x <- (x - mean(x)) * (5.7 / current_sd) + 70

# Generate for y
y <- rnorm(15, mean = 80, sd = 9.6)

# Adjust to match exactly the mean
y <- y - mean(y) + 80

# Adjust to match exactly the standard deviation
current_sd <- sd(y)
y <- (y - mean(y)) * (9.6 / current_sd) + 80

# Final checks
n <- length(x)    # 10
m <- length(y)    # 15
x_ <- mean(x)     # 70
y_ <- mean(y)     # 80
var_x <- sd(x)    # 5.7
var_y <- sd(y)    # 9.6

# PART 1:

f0<- var_x/var_y # f0 = 0.59375

alpha=0.05

qf(alpha,n-1,m-1) # 0.3305269


result <- var.test(x, y,
                   alternative = "greater",
                   conf.level = 0.95)

alpha < result$p.value

0.3305269 > 0.59375


# PART 2:


qt(alpha/2, n+m-2) 
qt(1-alpha/2, n+m-2) 


result <- t.test(x, y,
                 alternative = "two.sided",
                 var.equal = TRUE,
                 conf.level = 0.95)


alpha < result$p.value