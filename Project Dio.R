setwd("/media/sf_AIT-580")#Set working directory to access files and store data.
cardata <- read.csv("Project_data.csv") #Upload the data
cor(cardata) #Shows correlation data for variables
pairs(cardata)#Scatterplots showing variable relations
lm_cardata = lm(ATV.Sales~Year, data=cardata) #Create the linear regression
summary(lm_cardata) #Review results for the linear regression
plot(ATV.Sales~Year, data=cardata)#Scatterplot showing ATV Sales over Years
abline(lm_cardata)#Simple Linear regression projection
predict(lm_cardata, data.frame("Year"=2050))#Prediction of ATV Sales in the year 2050
