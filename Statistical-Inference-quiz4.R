x <- c(140, 138, 150, 148, 135)
y <- c(132, 135, 151, 146, 130)

t.test(x,y, paired=TRUE)

sample_nine <- c(rnorm(9, mean = 1100, sd = 30))
t.test(sample_nine, alternative = "t", mu = 1100) # Ho: mu = 1100

n<-4 
x<-3 
test <- binom.test(x=x, n=n, alternative = "greater")
round(test$p.value,2)


lambda_1 <- 1./100.
events <- 10.
days <- 1787.
test <- poisson.test(events, T = days, r = lambda_1, alternative = "less")
round(test$p.value, 2)


n_x <- 9 
n_y <- 9 
mu_y <- -3
mu_x <- 1.
sigma_y <- 1.5
sigma_x <- 1.8 

sigma_p <- sqrt(((n_x-1)*sigma_x*sigma_x + (n_y-1)*sigma_y*sigma_y)/(n_x + n_y -2))
pval <- pt((mu_y - mu_x) / (sigma_p * (1 / n_x + 1 / n_y)^.5), df = n_y + n_x - 2)
pval 


n <- 100 
mu <- 0.01
sd <- 0.04
p <- 0.05 
pow <- power.t.test(n=n, delta=mu, sd=sd, sig.level = p, 
                    type = "one.sample", alt="one.sided")
pow 

mu <- 0.01
sd <- 0.04
p <- 0.05 
pow <- 0.9
n <- power.t.test(power = pow, delta=mu, sd=sd, sig.level = p, 
                    type = "one.sample", alt="one.sided")$n
n <- ceiling(n/10)*10
n
