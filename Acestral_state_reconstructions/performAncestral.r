# Load package
library(ape)

# Get the data
geneData <- read.table("cdhit_clustering/outputTable.txt", row.names=1)
geneData <- t(geneData)
burkTree <- read.nexus("ancestral_state/reRootedBurkholderiaceae.tre")
geneData <- geneData[burkTree$tip.label, ]

# Run the analysis
output <- matrix(, nrow=292, ncol=63555)
for (n in 1:63555) {
  print(n)
  if (sum(geneData[,n]) < 293) {
    currentData <- geneData[,n]
    names(currentData) <- row.names(geneData)
    reconstruction <- ace(currentData, burkTree, type="discrete", model="ER")
    output[,n] <- round(reconstruction$lik.anc[,2], digits=0)
  }
  if (sum(geneData[,n]) == 293) {
    output[,n] = 1
  }
}

# Save and quit
save.image(file='ancestral_state/aceOutput.RData')
quit("no")
  
