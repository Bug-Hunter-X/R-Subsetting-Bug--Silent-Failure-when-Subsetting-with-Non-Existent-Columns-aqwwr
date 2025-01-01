```R
# Improved code to handle cases where subset columns might not exist.
data <- data.frame(a = 1:3, b = 4:6)
subset_cols <- c("a", "c")

# Check if all columns in 'subset_cols' exist in 'data'
if (all(subset_cols %in% names(data))) {
  result <- data[, subset_cols]
} else {
  missing_cols <- setdiff(subset_cols, names(data))
  warning(paste("Columns", paste(missing_cols, collapse = ", "), "not found in data frame."))
  # Handle the case where some columns are missing - you might want to return an error, subset only the existing columns, or perform some other action.
  result <- data[, intersect(subset_cols, names(data))] 
}
print(result)
```