library(tidyverse)
#first 6 row
head(mpg)
#structure 
str(mpg)
mpg %>%
  select(manufacturer)

mpg %>%
  distinct(manufacturer)

mpg %>%
  filter(manufacturer == "honda"|manufacturer == "toyota")
#| or 
# & and 
mpg%>%
  select(manufacturer,year,cty,hwy) %>%
  filter(manufacturer == "honda" & year =="1999")

mpg %>%
  mutate(manufacturer= str_to_title(manufacturer), model=str_to_title(model)) %>%
  select(manufacturer,model,year,trans,hwy)

my_messy_data <- read_csv("https://raw.githubusercontent.com/ajstewartlang/03_data_wrangling/master/data/my_data.csv")
head(my_messy_data)

 my_messy_data %>%
  mutate(condition = recode(condition,
                             "1" = "PrimeA_TargetA",
                             "2" = "PrimeA_TargetB", 
                             "3" = "PrimeB_TargetA", 
                             "4" = "PrimeB_TargetB")) %>%
  separate(col="condition", into = c("prime","Target"),sep = "_") %>%
  #mutate(Prime = factor(Prime),Target = factor(Target))

  #new pivot function 
  my_wide_data <- read_csv("https://raw.githubusercontent.com/ajstewartlang/03_data_wrangling/master/data/my_wide_data.csv")
 

  