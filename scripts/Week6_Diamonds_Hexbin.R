library(ggplot2)
library(hexbin)
data("diamonds")

plot(diamonds$carat, diamonds$price,
     col = rgb(0,0,1,0.1),
     pch = 16,
     main = "Scatter Plot: Carat vs Price")

hb <- hexbin(diamonds$carat, diamonds$price, xbins = 40)
plot(hb, main = "Hexbin Plot")

ggplot(diamonds, aes(x = carat, y = price)) +
  geom_hex()

ggplot(diamonds, aes(carat, price)) +
  geom_hex() +
  labs(title = "Hexagon Binning: Diamond Structure",
       x = "Carat",
       y = "Price") +
  theme_minimal()

ggplot(diamonds, aes(carat, price)) +
  geom_hex(bins = 40) +
  scale_fill_gradient(low = "lightgreen", high = "red") +
  theme_minimal()

ggplot(diamonds, aes(carat, price)) + 
  geom_hex(bins = 20) +
  scale_fill_viridis_c(name = "Count") +
  labs(title = "Density Structure of Diamonds",
       x = "Carat",
       y = "Price") +
  theme_minimal()

ggplot(diamonds, aes(carat, price)) + 
  geom_hex() + 
  scale_fill_viridis_c() +
  facet_wrap(~cut) +
  theme_minimal()

ggplot(diamonds, aes(carat, price)) + 
  geom_hex() + 
  scale_fill_viridis_c() +
  scale_y_log10() +
  theme_minimal()