## Reprex 1
library(tidyverse)

example_df <- tribble(
  ~animal, ~color,
  "Beetle", "black",
  "Lizard", "purple"
)

example_df_lower <- example_df %>% 
  mutate(across(where(is.character, tolower)))

## Correct reprex 1

library(tidyverse)
example_df <- tribble(
  ~animal, ~color,
  "Beetle", "black",
  "Lizard", "purple"
)

example_df_lower <- example_df %>% 
  mutate(across(where(is.character), tolower))

## reprex 2
library(tidyverse)

mtcars |> 
  ggplot(aes(x = mpg, y = cyl)) +
  geom_point(aes(shape = 12), color = "purple")


## Reperex fixed 2


