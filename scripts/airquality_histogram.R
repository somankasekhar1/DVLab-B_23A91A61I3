?airquality
class(airquality)
hist(airquality$Temp,
     main = "Histogram of Temperature",
     xlab = "Temperature",
     col = "orange",
     border = "white")

library(ggplot2)
ggplot(airquality, aes(x = Temp, fill = factor(Month))) +
  geom_histogram(bins = 15, color = "white") +
  labs(title = "Temperature Distribution by Month",
       x = "Temperature",
       y = "Count") +
  facet_wrap(~Month) +
  theme_minimal()
ggsave("plots/airquality_histogram.png")