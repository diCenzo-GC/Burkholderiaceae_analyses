# Set working directory
setwd("Projects/betaproteobacteria/March/")

# Load output of the ace analysis and cdhit data
load("aceOutput.RData")
geneData <- read.table("outputTable.txt", row.names=1)
geneData <- t(geneData)

# Load the list of clusters associated with each replicon family of interest
burkChromo <- read.table("Burkholderia_allGenus_chromosome_clusters.txt", sep = " ")

# Get ace data for Burkholderia chromosome
output2 <- matrix(, nrow=292, ncol=nrow(burkChromo))
for(n in 1:nrow(burkChromo)) {
  output2[,n] <- output[,burkChromo[n,2]+1]
}

# Count ace data for each ancestral and extant strain
countSummary <- matrix(, nrow=292, ncol=11)
for(n in 1:292) {
  countSummary[n,1] <- sum(output2[n,])
}
