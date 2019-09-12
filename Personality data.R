lecturerData = read.csv("~/Desktop/ExpMeth1/xid-7217454_1.csv", header = TRUE)
persData = read.csv("~/Desktop/ExpMeth1/xid-7217454_1.csv", header = TRUE)
persData
subset <- (persData, shoesize == 38)
Shoesize43 <- subset(persData, shoesize ==43)
Shoesizeunder40 <- subset(persData, shoesize < 40)
mean(persData$shoesize) #How to find the mean of a column
AverageShoesize <- mean(persData$shoesize)
AverageShoesize hej

