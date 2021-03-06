# Load package
library(networkD3)
library(magrittr)

# Create fake data
src <- c("A", "A", "A", "A",
         "B", "B", "C", "C", "D")
target <- c("B", "C", "D", "J",
            "E", "F", "G", "H", "I")
networkData <- data.frame(src, target)


# Plot
# simpleNetwork(networkData)

simpleNetwork(networkData) %>%
saveNetwork(file = 'network.html')