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
