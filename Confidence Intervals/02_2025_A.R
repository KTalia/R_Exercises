x <- c(120, 125, 130, 110, 115, 140, 135, 128, 122, 118, 132, 140, 138, 121, 133, 130, 126, 127, 129, 119, 136, 125, 123, 131, 124, 137, 139, 120, 128, 132, 125, 100, 101, 102, 103)

alpha <- 0.05

n <- length(x) # 35


var_x <- var(x) # 122.5748

lower <- qchisq(0.05/2, n-1)
upper <- qchisq(1-0.05/2, n-1)

lower # 19.80625
upper # 51.966


var.conf.int <- function(x) {
  upper <-((n-1)*var_x)/qchisq(0.05/2, n-1)
  lower <-((n-1)*var_x)/qchisq(1-0.05/2, n-1)
  
  return(c(lower,upper))
}

var.conf.int(x)

# The CI is (80.1975, 210.4155)

