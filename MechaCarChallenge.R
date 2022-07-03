library(dplyr)
library(tidyverse)
Challenge1_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Challenge1_table) 
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Challenge1_table))
Challenge2_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- Challenge2_table %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),Std_Dev_PSI=sd(PSI), .groups = 'keep')
lot_summary <- Challenge2_table %>% group_by(Manufacturing_Lot) %>%summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),Std_Dev_PSI=sd(PSI),Count=n(), .groups = 'keep')
