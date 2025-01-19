# Set seed for reproducibility
set.seed(123)

# Create a data frame with 10 rows and 2 columns
df <- data.frame(
  Variable1 = sample(0:200, 10, replace = TRUE),
  Variable2 = sample(0:200, 10, replace = TRUE)
)

# Print the data frame
print(df)

write.csv(df, file = "data/dataframe.csv")
