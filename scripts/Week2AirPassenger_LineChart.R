AirPassengers
class(AirPassengers)
View("AirPassengers")

ap_df<- data.frame(
  year = time(AirPassengers),
  passengers = as.numeric(AirPassengers)
)

ap_df_months <- data.frame(
  year = floor(time(AirPassengers)),
  month = cycle(time(AirPassengers)),
  passengers = as.numeric(AirPassengers)
)

ap_df_months

plot(AirPassengers, 
     main = "AirPassengers Time Series", 
     xlab = "months",
     ylab = "No. of passengers", 
     col = "red")

plot(AirPassengers, 
     type = 'l',
     lwd = 2,
     main = "AirPassengers Time Series", 
     xlab = "months",
     ylab = "No. of passengers", 
     col = "red")
points(AirPassengers,
       type = 'o',
       pch = 17,
       col = 'blue')
library(ggplot2)


ggplot(ap_df, aes(x = year, y = passengers)) +
  geom_line(color = "darkgreen",linewidth =0.5)+
  geom_smooth(se = FALSE, color = 'orange')+
  geom_point(color = "red") + 
  labs(
    title = "Monthly Air Passengers (1949-1960)",
    x = "Month",
    y = "Number of Passengers"
  ) +
  theme_minimal()