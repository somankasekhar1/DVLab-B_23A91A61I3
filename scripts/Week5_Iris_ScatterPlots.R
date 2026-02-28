data(iris) 
str(iris) 
View(iris) 
 
plot(iris$Sepal.Length, iris$Sepal.Width) 

plot( 
  iris$Sepal.Length, 
  iris$Sepal.Width, 
  main = "Sepal Length vs Sepal Width", 
  xlab = "Sepal Length (cm)", 
  ylab = "Sepal Width (cm)", 
  col = "blue", 
  pch = 16 
) 

plot( 
  iris$Sepal.Length, 
  iris$Sepal.Width, 
  col = as.numeric(iris$Species), 
  pch = 16, 
  main = "Sepal Dimensions by Species" 
) 
legend( 
  "topright", 
  legend = levels(iris$Species), 
  col = 1:3, 
  pch = 16 
) 
# Multivariate Scatter 
# Add size as a third variable 
plot( 
  iris$Sepal.Length, 
  iris$Sepal.Width, 
  col = as.numeric(iris$Species), 
  pch = 16, 
  cex = iris$Petal.Length / max(iris$Petal.Length), 
  main = "Multivariate Scatter Plot (Color + Size)" 
) 

pairs( 
  iris[, 1:4], 
  col = as.numeric(iris$Species), 
  pch = 16, 
  main = "Scatter Plot Matrix of Iris Dataset" 
) 
 
library(ggplot2) 
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) + 
  geom_point() 
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = 
                   Species)) + 
  geom_point(size = 2) + 
  theme_minimal() 
ggplot( 
  iris, 
  aes( 
    x = Sepal.Length, 
    y = Sepal.Width, 
    color = Species, 
    size = Petal.Length 
  ) 
) + 
  geom_point(alpha = 0.7) + 
  theme_minimal() 

ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) + 
  geom_point(color = "steelblue") + 
  facet_wrap(~Species) + 
  theme_minimal() 
 
library(GGally) 
ggpairs( 
  iris, 
  columns = 1:4, 
  aes(color = Species, alpha = 0.6) 
)

png("plots/Week5_Iris_ScatterPlots.png")

ggplot(
  iris,
  aes(
    x = Sepal.Length,
    y = Sepal.Width,
    color = Species,
    size = Petal.Length
  )
) +
  geom_point(alpha = 0.7) +
  theme_minimal()

dev.off()