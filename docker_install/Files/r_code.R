# Homework 1
library(faraway)
library(ggplot2)
data(teengamb)

#1
teengamb$sex<-factor(teengamb$sex)
levels(teengamb$sex)<-c('male','female')
summary(teengamb)

#2
# Numerical Summaries
mean(teengamb$income)
median(teengamb$income)
mean(teengamb$gamble)
median(teengamb$gamble)

#Graphical Summaries
ggplot(teengamb, aes(income))+geom_histogram(bins=20, colour='black')
ggsave("output/plot1.png")
ggplot(teengamb,aes(gamble))+geom_histogram()
ggsave("output/plot2.png")

print(list.files("output"))

#3
length(unique(teengamb$verbal))

#4
plot(teengamb$status,teengamb$verbal)
