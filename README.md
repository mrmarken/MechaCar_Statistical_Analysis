# **MechaCar Challenge**

## Project Overview

### Executive Summary
Use R and RStudio to perform statistical analysis to review the production data for insights that may help AutosRUs Manufacturing Team's progress on developing a prototype, MechaCar.

### Data Sources
The data sources to complete this project are outlined below:
* [MechaCar_mpg.csv](https://github.com/mrmarken/MechaCar_Statistical_Analysis/blob/main/data_sources/MechaCar_mpg.csv)
* [Suspension_Coil.csv](https://github.com/mrmarken/MechaCar_Statistical_Analysis/blob/main/data_sources/Suspension_Coil.csv)

### Software Used
RStudio 2022.07.1 Build 554

<br>

## Results & Discussion

### Linear Regression to Predict MPG (Deliverable 1)
| ![Figure1](https://github.com/mrmarken/MechaCar_Statistical_Analysis/blob/main/Images/Deliverable1_1_head.png) |
| :---: |
| **Figure 1.** MPG DataFrame |

| ![Figure2](https://github.com/mrmarken/MechaCar_Statistical_Analysis/blob/main/Images/Deliverable1_2_lm.png) |
| :---: |
| **Figure 2.** Linear Regression of MPG Dataset |


| ![Figure3](https://github.com/mrmarken/MechaCar_Statistical_Analysis/blob/main/Images/Deliverable1_3_summary.png) |
| :---: |
| **Figure 3.** MPG Dataset p-value and r-squared value |


1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
*Looking at the results (figure 2), it can be asserted that the largest contributor of non-random variance is the vehicle length with a p-value of 2.60e-12.  The second largest contributor of non-random variance is the ground clearance with a p-value of 5.21e-8.*

2. Is the slope of the linear model considered to be zero? Why or why not?
From figure 3, the p-value for this model (5.35e-11) is much smaller than the assumed significance level of 0.05%.  This suggests there is sufficient evidence to reject the null hypothesis (random chance), which means that the slope of our linear model is not zero.

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
*The R-squared value is 0.7149.  This suggests that ~71% of all mpg predictions will be determined by this model.  With this level of accuracy, the model seems to predict mpg of MechaCar fairly effectively.  It becomes a business decision on whether to use this model at this stage.

<br>

### Summary Statistics on Suspension Coils  (Deliverable 2)

| ![Figure4](https://github.com/mrmarken/MechaCar_Statistical_Analysis/blob/main/Images/Deliverable2_1_head.png) |
| :---: |
| **Figure 4.** Suspension Coil DataFrame  |

| ![Figure5](https://github.com/mrmarken/MechaCar_Statistical_Analysis/blob/main/Images/Deliverable2_2_lot_summary.png) |
| :---: |
| **Figure 5.** Suspension Coil Lot Summary  |

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
*Figure 4 provides an overview of the total data points in the Suspension Coil dataset.  Looking through the data, it can be concluded that the variance of all three lots combined falls under the maximum allowance of 100 psi.
However, when the data is analyzed on a per lot basis, there are clear differences between the lot manufacturing data:
* Lots 1 and 2 have a variance below 8 psi with relatively low standard deviations. 
* Lot 3 has a variance of 170 psi with a standard deviation of 13 psi.

Based on this data, it can be concluded that the manufacturing process for lot 3 deserves further inspection and immediate corrective actions to stabilize the population.  This can be further explained with this box plot:
| ![Figure6](https://github.com/mrmarken/MechaCar_Statistical_Analysis/blob/main/Images/suspension_coil_boxplot_per_lot.png) |
| :---: |
| **Figure 6.** Manufacturing Data Per Lot |

<br>

### T-Tests on Suspension Coils (Deliverable 3)

| ![Figure7](https://github.com/mrmarken/MechaCar_Statistical_Analysis/blob/main/Images/Deliverable3_1_ttest_all_lots.png) |
| :---: |
| **Figure 7.** T-test for all Lots Combined |

| ![Figure8](https://github.com/mrmarken/MechaCar_Statistical_Analysis/blob/main/Images/Deliverable3_2_per_lot.png) |
| :---: |
| **Figure 8.** T-tests per Lot |


Based on the t-test results (figure 7), it can be confirmed that the sample mean is not statistically different from the population mean of 1500 PSI with a p-value of 0.06.
From figure 8, it can be summarized that lots 1 and 2 are not statistically different from the population mean as they have p-values of 1 and 0.6, respectively.  Lot 3, however, has a mean statistically different from the population mean (p-value = 0.04).

<br>

### Study Design: MechaCar vs Competition (Deliverable 4)

It is recommended that further statistical analysis be performed to compare the performance of MechaCar against other competitors. 
At at minimum, the following metrics should be considered for a long-term study (2-3 years):
* MPG
* Safety Feature Ratings
* MSRP
* Engine types (Electric, Hybrid, Gasoline)
* Resale Value
* Horse Power
* Sustainability Features (manufacturing materials used)
* Carbon-cost of manufacturing processes

All these metrics can be used to make further assessments on whether MechaCar has statistically significant differences when measured against similar competitors.  The null hypothesis would be that none of these make any significant difference to the overall appeal of MechaCar.  On the opposite side, the alternative hypothesis is that some (or most) of these features would have a significant difference from the competition and AutoRUs should invest further in those areas.

To test all these features, it is recommended that multiple linear regression tests be performed to determine if MechaCar has higher or lower observed values in these variables when compared to similar competitors.  Large datasets should be obtained to understand quantitative and qualitative differences between MechaCar and its competitors.  As mentioned before, the dataset should be robust and should include recent data from the past 3-5 years in order to better understand differences in these key metrics.

