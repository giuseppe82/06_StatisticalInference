library(datasets)
library(ggplot2)
data <- ToothGrowth
head(data)
g <- ggplot(data = ToothGrowth, aes(x = as.factor(`dose`), 
                                           y = `len`, 
                                           fill = `supp`)) 

g <- g + geom_bar(stat = "identity")
g <- g + xlab("Dose in mg") 
g <- g + ylab('Tooth length')
g <- g + facet_grid((.~supp))
g <- g + guides(fill = guide_legend((title = "Supplement type")))
print(g)

fit <- lm(len ~ dose + supp, data = ToothGrowth)
summary(fit)
confint(fit)



g <- ggplot(data = ToothGrowth, aes(x = as.factor(`dose`), 
                                    y = `len`)) 

g <- g + geom_boxplot(aes(fill = factor(dose)))
g <- g + xlab("Dose in mg/day") 
g <- g + ylab('Tooth length')
g <- g + guides(fill = guide_legend((title = "Dose")))
print(g)

