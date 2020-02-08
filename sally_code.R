raw_data <- read.csv("All_Beauty.csv")
library(dplyr)
library(ggplot2)
glimpse(raw_data)

names(raw_data) <- c("product_ID","user_ID","ratings")

View(raw_data)

avg_rating <- raw_data %>% 
  group_by(product_ID) %>% 
  summarize(product_ratings = mean(ratings))

ggplot(avg_rating, aes(x = product_ratings,fill=product_ratings,group=product_ID)) +
  geom_bar()+
  labs(title="Number of each rating in all beauty")

Software %>%
  group_by(product) %>%
  summarize(avg_rating = mean(rating),
            median_rating = median(rating)) %>%
  arrange(desc(avg_rating))
