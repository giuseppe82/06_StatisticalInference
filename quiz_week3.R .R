## Quiz 3.
# Problem 1.
mu <- 1100
sd <- 30
n <- 9 
error <- qt(0.975, df = n) * sd/sqrt(n)
left <- mu - error
right <- mu + error
left 
right 

# Alternative
x_bar <- 1100
s <- 30
n <- 9
alpha <- 0.05
ts <- qt(1 - alpha / 2, n - 1) # 2.306004
round(x_bar + c(-1, 1) * ts * s / sqrt(n)) # 1077 1123

# Problem 2 
x <- -2 
n <- 9 
sd <- - x * sqrt(9)/(qt(0.975, df = n-1))
sd

# Problem 3.
# Independent tests: not related participants
# Paired tests: related participants, same group uses 2 different tests
# A paired interval.

#Problem 4
# Confidence intervals for multiple tests 
# Sampling Distribution of Difference between Means, 
# Confidence Intervals, Confidence Interval on the Mean
m <- c(3, 5)
sd <- sqrt(0.60/10 + 0.68/10)
mse <- (0.60 + 0.68)/2 
sm1m2 <- sqrt((2 * mse)/10)
tcl <- qt(0.975, 20 - 2) 
error <- tcl * sm1m2
left <- (3 - 5) - error
right <- (3-5) + error
left 
right

# Problem 5 
# Suppose that you create a 95% T confidence interval. 
# You then create a 90% interval using the same data. 
# What can be said about the 90% interval with respect to the 95% interval?
# The interval will be narrower.

# Problem 6 
m <- c(4, 6)
sd <- c(0.50, 2)
sigma_2 <- (sd[1]*sd[1])/100 + (sd[2]*sd[2])/100
sigma <- sqrt(sigma_2)
tcl <- qt(0.975, 100 - 2) 
error <- tcl * sigma
left <- (6 - 4) - error
right <- (6 - 4) + error
left
right
# 1.59 2.41 => The new system appears to be effective. 

# Problem 7 

m <- c(-3, 1)
sd <- c(1.5, 1.8)
sigma_2 <- (sd[1]*sd[1])/9 + (sd[2]*sd[2])/9
sigma <- sqrt(sigma_2)
tcl <- qt(0.95, 18 - 2) 
tcl
error <- tcl * sigma
error
left <- (-3 - 1) - error
right <- (-3 - 1) + error
left
right

n_x <- 9
n_y <- 9
x_bar <- -3
y_bar <- 1
s_x <- 1.5
s_y <- 1.8
alpha <- 0.1
sp_2 <- ((n_x - 1)*s_x^2 + (n_y - 1)*s_y^2) / (n_x + n_y - 2)
sp <- sqrt(sp_2)
ts <- qt(1 - (alpha/2), n_x + n_y - 2)
ts
ts * sp * (sqrt(1/n_x + 1/n_y))

round((x_bar - y_bar) + c(-1, 1) * ts * sp * (sqrt(1/n_x + 1/n_y)), 3)

