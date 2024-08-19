library(datasets)
library(tidyr)

print(iris);

sepal_len_vector <- iris[, 'Sepal.Length']
print(class(sepal_len_vector))
print(sepal_len_vector[1:10])

species_factor <- iris[, 'Species']
print(class(species_factor))
print(species_factor[1:10])


lst = list(sepal_len_vector[1:5], species_factor[1:5])
print(class(lst))
print(lst)

M1 = matrix( c(1, 2, 3, 4), nrow = 2, ncol = 2, byrow = TRUE)
M2 = matrix( c(1, 2, 3, 4), nrow = 2, ncol = 2, byrow = TRUE)
M3 = M1 * M2
M4 = crossprod(M1, M3)
print("Dot product")
print(M3)
print("Cross product")
print(M4)

plot(iris)

df = na.omit(iris)

plot(df$Petal.Length, df$Petal.Width, xlab = "Petal Length", 
     ylab = "Petal Width", main = "Petal Length vs Petal Width", 
     col = df$Species)