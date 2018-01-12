# R lesson data analysis script

# Load cat data
cats <- read.csv(file="data/feline_date.csv")

# Preliminary analysis of inflammation

# Load data (no headers, CSV)
data <- read.csv(file="data/inflammation-02.csv", header=FALSE)

# Calculate average inflammation by patient and day
avg_inflammation_patient <- rowMeans(data)
avg_inflammation_day <- apply(data, 2, mean)

# Calculate maximum daily inflammation
max_day_inflammation <- apply(data, 2, max)

# Histogram average patient inflammation
hist(avg_inflammation_patient, breaks=seq(5, 8, by=0.2))

# Plot standard deviation and inflammation by day
sd_by_day <- apply(data, 2, sd)
plot(sd_by_day)

hist(avg_inflammation_day, breaks=seq(0, 15, by=0.5))


# Afternoon session - data structures

# integer vector
x <- c(10, 12, 45, 33)

# Define second vector
xx <- c(1, 2, 'a')

# Define factor
f <- factor(c("no", "yes", "no"))

# Create a matrix of zeroes
m1 <- matrix(0, ncol=6, nrow=3)

# Create a list
l <- list(1, "a", TRUE, matrix(0, nrow=2, ncol=2), f)

# Create named list
l_named <- list(course="SWC", b=1:4)

# Create vector
v <- c(5.4, 6.2, 7.1, 4.8, 7.5)
mask <- c(TRUE, FALSE, TRUE, FALSE, TRUE)

# Create dataframe
df <- data.frame(a=1:3, b=c("eeny", "meeny", "miney"), c=c(TRUE, FALSE, TRUE))




