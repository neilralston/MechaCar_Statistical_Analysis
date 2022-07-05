library(dplyr)
library(tidyverse)

Challenge1_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Challenge1_table) 
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Challenge1_table))

Challenge2_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- Challenge2_table %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),Std_Dev_PSI=sd(PSI), .groups = 'keep')
lot_summary <- Challenge2_table %>% group_by(Manufacturing_Lot) %>%summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),Std_Dev_PSI=sd(PSI),Count=n(), .groups = 'keep')
total_summary <- Challenge2_table %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),Std_Dev_PSI=sd(PSI), count=n(), .groups = 'keep')

t.test(Challenge2_table$PSI,mu=1500)
lot1 <- subset(Challenge2_table, Manufacturing_Lot=="Lot1")
lot2 <- subset(Challenge2_table, Manufacturing_Lot=="Lot2")
lot3 <- subset(Challenge2_table, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
