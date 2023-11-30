library(tidyverse)
library(palmerpenguins)
data(package = 'palmerpenguins')
head(penguins)

penguins %>% arrange(bill_length_mm)

penguins %>% arrange(-bill_length_mm)

penguins2 <- penguins %>% arrange(-bill_length_mm)
view(penguins2)

penguins %>% group_by(island) %>% drop_na() %>% summarize(mean_bill_length_mm = mean(bill_length_mm))

penguins %>% filter(species == "Adelie")
