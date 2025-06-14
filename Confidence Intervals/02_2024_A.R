# Prop test

alpha <- 0.05

qnorm(alpha/2)

help(prop.test)

prop.test(11,
          84,
          conf.level = 0.95,
          correct = FALSE
          )$conf.int

