# R Subsetting Bug: Silent Failure when Subsetting with Non-Existent Columns

This repository demonstrates a common but easily missed error in R when subsetting data frames using character vectors.  The bug arises when attempting to access columns that do not exist in the data frame.  R will silently fail in this case, resulting in unexpected behavior and potential errors that are hard to debug.  The solution involves checking if the specified columns exist before subsetting. 

## Bug
The `bug.R` file shows code that attempts to subset a data frame using a character vector.  If any of the specified column names do not exist, the code runs without error, but the result will be incorrect or contain `NA` values without warning. 

## Solution
The `bugSolution.R` file provides a corrected version that uses `%in%` to check if all columns exist. This ensures that only valid column names are used, avoiding silent failures and leading to a robust solution.
