-------------------
  
  ACTIVITY 1
-------------------
phc = X10_2021PHC_CSV
summary_dimensions <- dim(phc)  #checking for number of observations and variables
summary_dimensions
Missing_data <- colnames(phc)[colSums(is.na(phc))>0]    #variables with missing data  
variable_types <- sapply(phc, class)        #type of variable
variable_types
male_female_by_region <- table(phc$region, phc$a12d)   #number of male and female by region
male_female_by_region
male_female_by_employment <- table(phc$sector, phc$a12d)    #number of male and female by sector of employment
male_female_by_employment
Girls_below_twelve_married <- sum(phc$a12e < 12 & phc$a12d == "Female" & phc&marital_status == "Married" na.rm = TRUE)   #Girls below 12 who are married
Girls_below_twelve_married