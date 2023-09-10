rm(list=ls())
library('rio')
d = import("LungCancer.txt", skip=15)
str(d)
colnames(d) <- c("treatment", "cell.type", "survival","status", "karn.score",
                 "month.diagosis", "age", "prior.chemo")

#feature engineering

#About 80% to 85% of lung cancers are NSCLC. (Non-small cell lung cancer) variables: 1: squamous, 3:adeno , 4:large
#About 10% to 15% of all lung cancers are SCLC.  variables: 2:small-cell
d$treatment = factor(d$treatment)
d$cell.type = factor(d$cell.type)
d$prior.chemo = factor(d$prior.chemo)
attach(d)
d$cancer <- ifelse(d$cell.type=="2", "SCLS", "NSCLS")
d$cancer <- factor(d$cancer)

# Data visulization 
length(unique(survival))                 # Count of unique values in the Time Column
unique(survival)                         # 20 unique times in the sample: 1-28 
summary(survival)
table(status)       #128 dead, 9 censored
table(prior.chemo)
hist(survival)
hist(age)

# Correlation Test

library("PerformanceAnalytics")
d_temp <- d[, c(5,6,7)]
chart.Correlation(d_temp)                    # there is no correlation 



library(survival)
y <- Surv(survival, status) 
km <- survfit(y~1)
summary(km) #The estimated survival probability for the patient at 186 days is approximately 0.208 or 20.8%.
km2 <- survfit(y~treatment)
summary(km2)

plot(km2, xlab="Days", ylab="Survival Probability", col=c("blue", "red"))
legend("topright", legend=c("Standard", "Test"), col=c("blue", "red"), lwd=1)


summary(km2, times=183)
summary(km2, times = 365)

# Cox proportional hazard model - coefficients and hazard rates
cox = coxph(y~ treatment + karn.score + month.diagosis+ age+ prior.chemo + cancer + treatment*age, data=d)
summary(cox)
cox.zph(cox)
# Exponential, Weibull, and log-logistic parametric model coefficients

exp = survreg(y~treatment + karn.score + month.diagosis + age + prior.chemo + cancer + treatment*age, data=d, dist="exponential")
summary(exp)

weibull <- survreg(y~treatment+karn.score+month.diagosis+age+prior.chemo+cancer+treatment*age, data=d, dist="weibull")
summary(weibull)

loglogistic <- survreg(y ~ treatment+karn.score+month.diagosis+age+prior.chemo+cancer+treatment*age, data = d, dist="loglogistic")
summary(loglogistic)


library(stargazer)
stargazer(cox, exp, weibull, loglogistic, type="text")
