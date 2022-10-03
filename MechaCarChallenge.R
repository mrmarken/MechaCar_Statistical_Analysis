# MechaCarChallenge.RScript

### Deliverable 1: Linear Regression to Predict MPG ###

# 3. Use the library() function to load the dplyr package.
library(dplyr)

# 4. Import and read in the MechaCar_mpg.csv file as a dataframe.
MechaCar_mpg <- read.csv(file='data_sources/MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
head(MechaCar_mpg)

# 5.Perform linear regression using the lm() function. In the lm() function, 
# pass in all six variables (i.e., columns), and add the dataframe you created 
# in Step 4 as the data parameter.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_mpg)

# 6.Using the summary() function, determine the p-value and the r-squared value for 
# the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_mpg))



### Deliverable 2:Create Visualizations for the Trip Analysis ###

# 2. In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.
suspension_coil <- read.csv(file='data_sources/Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# 3. Write an RScript that creates a total_summary dataframe using the summarize() function to get 
# the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- suspension_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), 
                                               Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
head(total_summary)

# 4. Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() 
# functions to group each manufacturing lot by the mean, median, variance, and standard deviation of 
# the suspension coil’s PSI column.
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean = mean(PSI),Median = median(PSI), Variance = var(PSI), SD = sd(PSI) , .groups = 'keep') 
head(lot_summary)

#box plot: PSI Lots Combined
plt1 <- ggplot(suspension_coil,aes(y=PSI)) #import dataset into ggplot2
plt1 + geom_boxplot() #add boxplot

#box plot: PSI per Lot
plt2 <- ggplot(suspension_coil,aes(x=Manufacturing_Lot,y=PSI)) #import dataset into ggplot2
plt2 + geom_boxplot()


### Deliverable 3: T-Tests on Suspension Coils ###

# 1. write an RScript using the t.test() function to determine if the PSI across all manufacturing 
# lots is statistically different from the population mean of 1,500 pounds per square inch.
?t.test()
t.test(suspension_coil$PSI,mu=mean(suspension_coil$PSI))

# 2. Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function 
# and its subset() argument to determine if the PSI for each manufacturing lot is statistically 
# different from the population mean of 1,500 pounds per square inch.

# lot 1 t-test
t.test(subset(suspension_coil$PSI,suspension_coil$Manufacturing_Lot == "Lot1"),mu=mean(suspension_coil$PSI))
# lot 2 t-test
t.test(subset(suspension_coil$PSI,suspension_coil$Manufacturing_Lot == "Lot2"),mu=mean(suspension_coil$PSI))
# lot 3 t-test
t.test(subset(suspension_coil$PSI,suspension_coil$Manufacturing_Lot == "Lot3"),mu=mean(suspension_coil$PSI))
