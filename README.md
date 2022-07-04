# MechaCar_Statistical_Analysis


## Linear Regression to Predict MPG

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

   As illustrated in the table below, both the vehicle length and ground clearance variables provided a non-random amount of variance to the mpg values.
   
   The vehicle length and ground clearance have a significant impact on mpg values. Less so but perhaps still significant is the vehicle weight.
      
   ![MPG_Regression](MPG_regression.PNG)

2. Is the slope of the linear model considered to be zero? Why or why not?

   The p-value of our linear regression analysis is 5.35e-11, which is less than an assumed significance level of 0.05%. 
   
   Therefore, there is sufficient evidence to reject the null hypothesis, which means that the slope of this linear model is not zero.

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

   Yes, this linear model is an efficient predicotr of mpg based on the following results:
   
   * p-value is less than the assumed significance level of 0.05%, suggesting significant variable impacts
   * Multiple r-squared value is greater than 0.70, suggesting strong correlation

## Summary Statistics on Suspension Coils

1.  The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.
    Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
    
    The current manufacturing data meets this design specification for all manufacturing lots.  The variance is 62.3 PSI.
    
    ![Coil_All_Lots](Coil_Total_Summary.PNG)
    
    However, Lot 3 does not meet the design specification when considered individually.  The variance for Lot 3 is 170.3 PSI.
    
    ![Coil_Individual_Lots](Coil_Lot_Summary.PNG)
    
## T-Tests on Suspension Coils 
 
1. Determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch. The assumed significance level is 0.05%. 
   
   The p-value of all manufacturing lots compared to the population mean is 0.06.  This is close enough to the signficance level to conclude that the results are          statistically different.
   
   ![Coil_T-Test_All](Coil_t-test1.PNG)
 
   
    


Deliverable 4: Design a Study Comparing the MechaCar to the Competition
