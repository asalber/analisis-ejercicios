# Install and load the sampling package if needed
install.packages("sampling")
library(sampling)

# Parameters for the sample size calculation
p <- 0.5  # Estimated prevalence (10%)
E <- 0.05  # Desired margin of error (5%)
confidence_level <- 0.95  # 95% confidence level

# Calculate the sample size
sample_size <- proportion_sample_size(p = p, e = E, conf.level = confidence_level)

# Show the required sample size
print(sample_size)
le size
result$n

n <- 1.96^2 * 0.5 * 0.5 / 0.05^2
[1] 384.16
n/(1+(n-1)/834)
