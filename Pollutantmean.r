# Pollutantmean 

pollutantmean <- function(pollutant ="sulfate",id = 1:332)
{
        lf<-list.files(, pattern = '*.csv')
        df <- data.frame()
        cnt <-0
        for (i in id)
                {
                        if (cnt ==0){
                                df <- read.csv(file = lf[i],header = TRUE)
                                cnt =1
                        }
                        else{
                                df <- rbind(df,read.csv(lf[i]))
                        }
                }
        mean_df <- df[,pollutant]
        mean_p <- mean(mean_df,na.rm = TRUE)
         mean_p
        
}

pollutantmean( "sulfate", 1:10) 
pollutantmean("nitrate", 70:72) 
pollutantmean("nitrate", 23) 



complete <- function(id = 1:332)
{
        lf<-list.files(, pattern = '*.csv')
        df <- data.frame()
        cnt <-0
        id =332
        for (i in 1:id)
        {
                if (cnt ==0){
                        df <- read.csv(file = lf[i],header = TRUE)
                        cnt =1
                }
                else{
                        df <- rbind(df,read.csv(lf[i]))
                }
        }
        good <- complete.cases(df)
        compl <- df[good,]
        new <- c(id = numeric ,nobs=numeric)
        new <-df[good,4]
        new
                
}


