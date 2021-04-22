# Question 1
# Read in the london crime data file
london_crime <- read.csv("london-crime-data.csv")
london_crime
# show the structure of the dataset
str(london_crime)

# Amalgamate the month and year variables into a new variable called Date
london_crime$Date <- paste(london_crime$month, london_crime$year, sep='/')
str(london_crime)
Date <- as.Date(london_crime$Date, "%m/Y")
london_crime
# Add the day element into the variable
Date <- paste("01", london_crime$month, london_crime$year, sep = "/")
Date
london_crime$Date <- as.Date(Date, "%d/%m/%Y")
london_crime

# Question 2
# Retain the variables needed
london_crime <- london_crime[c("borough", "major_category", "minor_category", "value", "Date")]
# Convert the variable names
column_names <- c("Borough", "MajorCategory", "SubCategory", "Value", "CrimeDate")
colnames(london_crime) <- column_names
str(london_crime)
london_crime

# Question 3
# Convert the CrimeDate variable so that it is a variable of type Date
london_crime$CrimeDate <- as.Date(Date, "%d/%m/%Y")
london_crime
# Show the structure and content of the date variable
str(london_crime)

# Question 4
# Plot a chart to show the summary of the borough information
plot(london_crime$Borough)
london_crime$Borough <- factor(london_crime$Borough)
plot(london_crime$Borough)
summary(london_crime$Borough)
# Croydon has the highest level of crime
# City of London has the lowest level of crime

# Question 5
# Display the MajorCategory variable data in a pie chart
x <- c(london_crime$MajorCategory)
piechart(x, labels = names(x), edges = 200, radius = 0.8,
         density = NULL, angle = 45, col = NULL, main = NULL, ...)

# Question 6
