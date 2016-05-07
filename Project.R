# Assignment Project - Statistical Inference 
set.seed(12121)
lambda <- 0.2
sample_size <- 40 
nsim <- 1.0e3
exp_sample <- rexp(sample_size, rate = lambda)
head(exp_sample)
tail(exp_sample)
summary(exp_sample)

repeated_exp <- replicate(nsim, mean(rexp(n = sample_size, rate = lambda)))
summary(repeated_exp)

sdeviation <- sd(repeated_exp, na.rm = FALSE)
sdeviation
