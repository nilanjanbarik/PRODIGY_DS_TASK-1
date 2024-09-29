#Prodigy_DS_Task-01

#Visualization of Population dataset.

#First of all we load tha dataset.
data<-read.csv("C:\\Users\\Nilanjan Barik\\Downloads\\API_SP.POP.TOTL_DS2_en_csv_v2_3401680\\API_SP.POP.TOTL_DS2_en_csv_v2_3401680.csv",header = TRUE)
head(data)

#Now We clean the dataset by elimination some unnecessary rows and columns and that contains any missing values.

##Eliminating missing values:
data<-na.omit(data)

##Eliminating unnecessary columns:
data1<-data[,-c(2,3,4)]

###Giving rownames to the columns of this data
rownames(data1)<-data1[,1]
data1<-data1[,-1]

###Searching for any row, columns that contains any missing values.
which(is.na(data1))


#Creating Histogram for visualize the data . We use only first ten rows of the dataframe and try to understand the pattern.

par(mfrow=c(2,5))

hist(as.numeric(data1[1,]),probability = TRUE,xlab = "Population of Aruba",main = "Population Histogram for Aruba")
lines(density(as.numeric(data1[1,])),col="green",lwd=4)

hist(as.numeric(data1[2,]),probability = TRUE,xlab = "Population of Africa Eastern and Southern",main = "Population Histogram for Africa Eastern and southern")
lines(density(as.numeric(data1[2,])),col="green",lwd=4)

hist(as.numeric(data1[3,]),probability = TRUE,xlab = "Population of Afghanistan",main = "Population Histogram for Afghanistan")
lines(density(as.numeric(data1[3,])),col="green",lwd=4)


hist(as.numeric(data1[4,]),probability = TRUE,xlab = "Population of Africa Western and Central",main = "Population Histogram for Africa Western and Central")
lines(density(as.numeric(data1[4,])),col="green",lwd=4)

hist(as.numeric(data1[5,]),probability = TRUE,xlab = "Population of Angola",main = "Population Histogram for Angola")
lines(density(as.numeric(data1[5,])),col="green",lwd=4)

hist(as.numeric(data1[6,]),probability = TRUE,xlab = "Population of Albania",main = "Population Histogram for Albania")
lines(density(as.numeric(data1[6,])),col="green",lwd=4)

hist(as.numeric(data1[7,]),probability = TRUE,xlab = "Population of Andorra",main = "Population Histogram for Andorra")
lines(density(as.numeric(data1[7,])),col="green",lwd=4)

hist(as.numeric(data1[8,]),probability = TRUE,xlab = "Population of Arab World",main = "Population Histogram for Arab World")
lines(density(as.numeric(data1[8,])),col="green",lwd=4)

hist(as.numeric(data1[9,]),probability = TRUE,xlab = "Population of UAE",main = "Population Histogram for UAE")
lines(density(as.numeric(data1[9,])),col="green",lwd=4)

hist(as.numeric(data1[10,]),probability = TRUE,xlab = "Population of Argentina",main = "Population Histogram for Argentina")
lines(density(as.numeric(data1[10,])),col="green",lwd=4)

## It is quite difficult to create histograms for each of the 264 observations i.e. countries. So for better understanding we use Hmisc package and plot the histograms.


###Loading the package.
install.packages("Hmisc")
library(Hmisc)

### Histograms of the population distribution of the year from 1960 to 1969
hist.data.frame(data1[,1:10])

### Histograms of the population distribution of the year from 1970 to 1979
hist.data.frame(data1[,11:20])

### Histograms of the population distribution of the year from 1980 to 1989
hist.data.frame(data1[,21:30])

### histogram of the population distribution of the year from 1990 to 1999
hist.data.frame(data1[,31:40])

### Histograms of the population distribution of the year from 2000 to 2009
hist.data.frame(data1[,41:50])

### Histograms of the population distribution of the year from 2010 to 2019
hist.data.frame(data1[,51:60])

### Histograms of the population distributions of the year from 2020 to
hist.data.frame(data1[,61:64])
