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
