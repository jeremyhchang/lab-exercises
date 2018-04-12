iris_df <- data.frame(iris)
View(iris_df)

# Select all values of data frame for Sepal.Length
iris_df$Sepal.Length

# Select only rows of Virginica flowers
virginica <- iris_df[iris_df$Species == "virginica", ]

# Select only the sepal legnth of the Virginica flowers
virginica$Sepal.Length

# Select rows where Petal.Length > 4.0
iris_df[iris$Petal.Length > 4.0, ]

# Add a column to the dataframe indicating whether Petal.Length > 4.0
iris_df$Big.Petal.Length <- iris_df$Petal.Length > 4.0

# Find the species type of the flower that has the longest Sepal length
iris_df[iris_df$Sepal.Length == max(iris_df$Sepal.Length), ]$Species

# Select rows where species type is 'setosa' and Sepal.Width > 3.0
iris_df[((iris_df$Species == "setosa") & (iris_df$Sepal.Width > 3.0)), ]
