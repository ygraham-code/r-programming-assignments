# r-programming-assignments

Name: Yasmine Graham 
Course: LIS4370  

Repository for R Programming Assignments

Patients with a "good" assessment (green box) have a more consistent and moderate blood pressure, generally ranging between 50 and 150, with most values clustered near the middle of that range. This suggests that patients rated as "good" tend to have stable blood pressure.

Patients with a "bad" assessment (red box), on the other hand, have more variability in their blood pressure, ranging from as low as 50 to as high as 100. This wider spread could indicate that patients with more extreme or unpredictable blood pressure tend to be rated poorly by the doctor.


The majority of patients have a low frequency of visits, with 4 patients falling in the 0.2 to 0.3 range.

As the visit frequency increases, the number of patients decreases. Only 1 patient falls into the 0.8 to 0.9 range, indicating that most patients don’t visit the hospital regularly.

This suggests that most patients visit the hospital infrequently, possibly for emergencies or rare visits, while a smaller number of patients might have more frequent hospital visits.

The data might indicate that the hospital primarily serves patients with occasional needs, with very few individuals requiring regular visits.

## Module 4 Programming structure assignment

### Hospital Data Analysis

In this assignment, I analyzed data collected by a local hospital. The dataset includes the following variables:


The analysis involves visualizing the data through **boxplots** and **histograms** to understand patterns in blood pressure and visit frequency.

### Boxplot of Blood Pressure by Doctor's First Assessment
![Blood Pressure Boxplot](boxplot.png)

The boxplot above shows the distribution of blood pressure for patients rated as "good" or "bad" by the first doctor. Patients may be seen as "bad" if their blood pressure is more unpredictable or inconsistent, while "good" ratings tend to be given to those with more stable and moderate blood pressure levels.

### Histogram of Frequency of Visits
![Visit Frequency Histogram](histogram.png)

This histogram shows the distribution of how often patients visit the hospital. Most patients tend to visit infrequently, with a few who visit more regularly.

## Files
- `analysis.R`: R script that performs the data analysis, including generating the visualizations.
- `boxplot.png`: Boxplot showing blood pressure by first doctor assessment.
- `histogram.png`: Histogram of patient visit frequency.

## Code used

Freq <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
bloodp <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
first <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)
second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
finaldecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)


first_factor <- factor(first, levels = c(0, 1), labels = c("good", "bad"))

boxplot(bloodp ~ first_factor, main = "Blood Pressure by First Assessment",
        xlab = "First Assessment (Good / Bad)", ylab = "Blood Pressure",
        col = c("lightgreen", "lightcoral"))

hist(Freq, main = "Frequency of Visits Distribution",
     xlab = "Frequency of Visits", col = "lightblue", breaks = 5)

png("boxplot.png")
boxplot(bloodp ~ first_factor, main = "Blood Pressure by First Assessment",
        xlab = "First Assessment (Good / Bad)", ylab = "Blood Pressure",
        col = c("lightgreen", "lightcoral"))
dev.off()

png("histogram.png")
hist(Freq, main = "Frequency of Visits Distribution",
     xlab = "Frequency of Visits", col = "lightblue", breaks = 5)
dev.off()



#################

## Assignment 2 – myMean Function
This repository has a corrected version of the `myMean` function in R.

### Incorrect R Function Error Message:
Error in myMean(assignment2) : object 'assignment' not found

### Why it failed:
The function fails because the variable names inside the function do not match the function argument. The function argument is named assignment2, but the code refers to assignment and someData, which do not exist.

### Corrected R Function:
myMean <- function(assignment2) {
  return(sum(assignment2) / length(assignment2))
}

### Blog Post
[My Blog Post]
https://ygrahamrprogrammingjournal.blogspot.com/2026/01/module-2-assignment-debugging-r.html
