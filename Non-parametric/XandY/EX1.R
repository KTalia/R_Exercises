# H0:Thefilter and the gender are independent
# Ha:Thefilter and the gender are not independent

table <- matrix(c(100,60,70,90,100,40),2,3,byrow=TRUE)

rows <- c("male", "female")
columns<= c("blueF", "redF", "greyF")
dimnames(table) <- list("rows" =rows,
"columns" = columns)

result <- chisq.test(table, correct=FALSE)
result

alpha <- 0.05
alpha < result$p.value


