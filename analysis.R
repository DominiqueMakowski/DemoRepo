library(tidyverse)

df <- read.csv("https://raw.githubusercontent.com/DominiqueMakowski/DemoRepo/refs/heads/main/mydata.csv")

ggplot(df, aes(x = PHQ4_Depression, y = LifeSatisfaction)) +
  geom_density2d_filled() +
  geom_jitter(alpha = 0.5, color = "white", size = 3, shape = 16) +
  geom_smooth(method = "loess", formula = 'y ~ x', color = "red", se = FALSE) +
  scale_x_continuous(expand = c(0, 0)) +
  scale_y_continuous(expand = c(0, 0)) +
  guides(fill = "none") +
  theme_minimal()
