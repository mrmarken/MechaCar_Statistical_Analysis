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

# 6.Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_mpg))

