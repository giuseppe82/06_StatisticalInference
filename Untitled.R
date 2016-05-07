mu <- 1000
sd <- 30
n <- 9 

error <- qt(0.975, df = n-1) * sd/sqrt(n)
left <- mu - error
right <- mu + error

left 
right 