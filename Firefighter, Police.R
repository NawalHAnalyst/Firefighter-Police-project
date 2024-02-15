#Read in Files
library(readr)

firefighter <- read_csv("~/workspace/SNHU/DAT-500/Milestones/dat500_milestone_three_data_firefighter.csv")
View(firefighter)

police <- read_csv("~/workspace/SNHU/DAT-500/Milestones/dat500_milestone_three_data_police.csv")
View(police)

# Add variable for min, max and mean for firefighter and police
# na.rm = TRUE (argument used to remove missing values which is space in this case)
firefighter_total_salary_min <- min(firefighter$`Total Salary`, na.rm = TRUE)
print(firefighter_total_salary_min)

firefighter_total_benefits_min <- min(firefighter$`Total Benefits`, na.rm = TRUE)
print(firefighter_total_benefits_min)

firefighter_total_salary_max <- max(firefighter$`Total Salary`, na.rm = TRUE)
print(firefighter_total_salary_max)

firefighter_total_benefits_max <- max(firefighter$`Total Benefits`, na.rm = TRUE)
print(firefighter_total_benefits_max)

firefighter_total_salary_mean <- mean(firefighter$`Total Salary`, na.rm = TRUE)
print(firefighter_total_salary_mean)

firefighter_total_benefits_mean <- mean(firefighter$`Total Benefits`, na.rm = TRUE)
print(firefighter_total_benefits_mean)


police_total_salary_min <- min(police$`Total Salary`, na.rm = TRUE)
print(police_total_salary_min)

police_total_benefits_min <- min(police$`Total Benefits`, na.rm = TRUE)
print(police_total_benefits_min)

police_total_salary_max <- max(police$`Total Salary`, na.rm = TRUE)
print(police_total_salary_max)

police_total_benefits_max <- max(police$`Total Benefits`, na.rm = TRUE)
print(police_total_benefits_max)

police_total_salary_mean <- mean(police$`Total Salary`, na.rm = TRUE)
print(police_total_salary_mean)

police_total_benefits_mean <- mean(police$`Total Benefits`, na.rm = TRUE)
print(police_total_benefits_mean)

# Create a vector for police
policeV <- c(police_total_salary_min,police_total_salary_mean,police_total_salary_max,police_total_benefits_min,police_total_benefits_mean,police_total_benefits_max)
policeV

# Create a matrix for Firefighter
firefighterM <- rbind(firefighter_total_salary_min,firefighter_total_salary_mean,firefighter_total_salary_max,firefighter_total_benefits_min,firefighter_total_benefits_mean,firefighter_total_benefits_max)
colnames(firefighterM) <- c("firefighter")
rownames(firefighterM)<- c("TotSalMin","TotSalMean","TotSalmax","TotBenMin","TotBenMean","TotBenMax")
firefighterM

# Create a matrix to combine police and firefighter data into single matrix
compensationM <- cbind (firefighterM, policeV)
colnames(compensationM) <- c("firefighter","police")
compensationM

# Create a data frame that compares data from fireghter and police
df <- data.frame(compensationM,firefighterM-policeV)
colnames(df) <- c("firefighter","police","firefighter vs police")
df


