lecturerData = read.csv("~/Desktop/ExpMeth1/xid-7217454_1.csv", header = TRUE)
persData = read.csv("~/Desktop/ExpMeth1/xid-7217454_1.csv", header = TRUE)
persData
Shoesize43 <- subset(persData, shoesize == 43)
Shoesizeunder40 <- subset(persData, shoesize < 40)
mean(persData$shoesize) #How to find the mean of a column
AverageShoesize <- mean(persData$shoesize)
Shoesizeover39 <- subset(persData, shoesize > 39)
library(pacman)
pacman::p_load(tidyverse) #installs automatically if you don't have it, makes it useable if you do
shoes40 <- filter(persData, shoesize == 40)

EXERCISES
Shoesizeover39 <- subset(persData, shoesize > 39) #1.1
TouchfloorYes <- filter(persData, persData$touch_floor == "Yes" | persData$touch_floor == "Yes, of course!!")
TouchfloorYes
AverageBreathHold <- mean(persData$breath_hold)                 
LongBreathHold <- filter(persData, breath_hold > AverageBreathHold)
LongBreathHold
BallonSkills <- filter(persData$balloon_balance >= 13 <= 60)
BallonSkills <-  filter(persData, balloon_balance >= 13 & balloon_balance <= 60)
AllCriteria <- filter(persData, breath_hold > AverageBreathHold,  shoesize >= 39, persData$touch_floor == "Yes" | persData$touch_floor == "Yes, of course!!", balloon_balance >= 13 & balloon_balance <= 60)
AllCriteria

SlowTongue <- arrange(persData, desc(tongue_twist))
SlowTongue
BestRomberg <- arrange(persData, desc(persData$romberg_open == 120))
BestRomberg

select(persData, name, name) #you just get the names? 
select(persData, name, gender, shoesize, name) #same
select(persData, name:gender) #colon means everything between name and gender)
#select(persData, -c(name:gender, vis_duck:taste_blind))
#select(persData, gender, everything())

vars = c("name", "shoesize", "touch_floor")
select(persData, vars) #you get what is in your vector
select(persData, gender, shoesize, everything()) #you get gender and shoesize first, everything else after that

wordspersec <- mutate(persData, words_per_sec = 99/tongue_twist)

breathmin <- mutate(persData, breath_hold %/% 60)
breathmin

by_gender <- group_by(persData, gender) 
summarise(by_gender, mean(shoesize)) #find mean of genders

#pipes # %>% reads ‘send the resulting dataframe(s) to the following function’.
#shortcut cmd + shift + M
persData %>% group_by(gender) %>% summarise(mean(breath_hold))

tastecola <- (persData$taste_cola)

persData %>% group_by(sound_level_pref) %>%  summarize(taste_cola) #error that group_by cannit be used on factor class
