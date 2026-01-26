# r-programming-assignments

Name: Yasmine Graham 
Course: LIS4370  

Repository for R Programming Assignments


## Assignment 2 – myMean Function
This repository has a corrected version of the `myMean` function in R.

### Incorrect R Function Error
Error in myMean(assignment2) : object 'assignment' not found

### Why it failed
The function fails because the variable names inside the function do not match the function argument. The function argument is named assignment2, but the code refers to assignment and someData, which do not exist.

### Corrected R Function
myMean <- function(assignment2) {
  return(sum(assignment2) / length(assignment2))
}

### Blog Post
[My Blog Post]
https://ygrahamrprogrammingjournal.blogspot.com/2026/01/module-2-assignment-debugging-r.html
