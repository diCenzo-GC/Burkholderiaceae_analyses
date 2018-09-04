burkParaChromosome <- read.table("Burk_Para_chromosome_clusters.txt", sep = " ")
burkParaChromid <- read.table("Burk_Para_chromid_clusters.txt", sep = " ")
burkMegaplasmid <- read.table("Burk_Para_BCC_mega_clusters2.txt", sep = " ")
cupRalChromosome <- read.table("Cup_Ral_chromosome_clusters.txt", sep = " ")
cupRalChromid <- read.table("Cup_Ral_chromid_clusters.txt", sep = " ")

countSummaryAncestral2 <- matrix(, nrow=292, ncol=16)
countSummaryAncestral2[,1:11] <- countSummaryAncestral
countSummaryAncestral <- countSummaryAncestral2

countSummaryExtant2 <- matrix(, nrow=293, ncol=16)
countSummaryExtant2[,1:11] <- countSummaryExtant
countSummaryExtant <- countSummaryExtant2

## Para Burk  chromosome
# Get ace data for ancestral strains
output2 <- matrix(, nrow=292, ncol=nrow(burkParaChromosome))
for(n in 1:nrow(burkParaChromosome)) {
  output2[,n] <- output[,burkParaChromosome[n,2]+1]
}
# Count ace data for each ancestral strain
for(n in 1:292) {
  countSummaryAncestral[n,12] <- sum(output2[n,])
}
# Get ace data for extant strains
output3 <- matrix(, nrow=293, ncol=nrow(burkParaChromosome))
for(n in 1:nrow(burkParaChromosome)) {
  output3[,n] <- geneData[,burkParaChromosome[n,2]+1]
}
# Count ace data for each ancestral strain
for(n in 1:293) {
  countSummaryExtant[n,12] <- sum(output3[n,])
}

## Para Burk  chromid
# Get ace data for ancestral strains
output2 <- matrix(, nrow=292, ncol=nrow(burkParaChromid))
for(n in 1:nrow(burkParaChromid)) {
  output2[,n] <- output[,burkParaChromid[n,2]+1]
}
# Count ace data for each ancestral strain
for(n in 1:292) {
  countSummaryAncestral[n,13] <- sum(output2[n,])
}
# Get ace data for extant strains
output3 <- matrix(, nrow=293, ncol=nrow(burkParaChromid))
for(n in 1:nrow(burkParaChromid)) {
  output3[,n] <- geneData[,burkParaChromid[n,2]+1]
}
# Count ace data for each ancestral strain
for(n in 1:293) {
  countSummaryExtant[n,13] <- sum(output3[n,])
}

##  Burk megaplasmid
# Get ace data for ancestral strains
output2 <- matrix(, nrow=292, ncol=nrow(burkMegaplasmid))
for(n in 1:nrow(burkMegaplasmid)) {
  output2[,n] <- output[,burkMegaplasmid[n,2]+1]
}
# Count ace data for each ancestral strain
for(n in 1:292) {
  countSummaryAncestral[n,14] <- sum(output2[n,])
}
# Get ace data for extant strains
output3 <- matrix(, nrow=293, ncol=nrow(burkMegaplasmid))
for(n in 1:nrow(burkMegaplasmid)) {
  output3[,n] <- geneData[,burkMegaplasmid[n,2]+1]
}

# Count ace data for each ancestral strain
for(n in 1:293) {
  countSummaryExtant[n,14] <- sum(output3[n,])
}

## Cup Ral chromosome
# Get ace data for ancestral strains
output2 <- matrix(, nrow=292, ncol=nrow(cupRalChromosome))
for(n in 1:nrow(cupRalChromosome)) {
  output2[,n] <- output[,cupRalChromosome[n,2]+1]
}
# Count ace data for each ancestral strain
for(n in 1:292) {
  countSummaryAncestral[n,15] <- sum(output2[n,])
}
# Get ace data for extant strains
output3 <- matrix(, nrow=293, ncol=nrow(cupRalChromosome))
for(n in 1:nrow(cupRalChromosome)) {
  output3[,n] <- geneData[,cupRalChromosome[n,2]+1]
}
# Count ace data for each ancestral strain
for(n in 1:293) {
  countSummaryExtant[n,15] <- sum(output3[n,])
}

## Cup Ral chromid
# Get ace data for ancestral strains
output2 <- matrix(, nrow=292, ncol=nrow(cupRalChromid))
for(n in 1:nrow(cupRalChromid)) {
  output2[,n] <- output[,cupRalChromid[n,2]+1]
}
# Count ace data for each ancestral strain
for(n in 1:292) {
  countSummaryAncestral[n,16] <- sum(output2[n,])
}
# Get ace data for extant strains
output3 <- matrix(, nrow=293, ncol=nrow(cupRalChromid))
for(n in 1:nrow(cupRalChromid)) {
  output3[,n] <- geneData[,cupRalChromid[n,2]+1]
}
# Count ace data for each ancestral strain
for(n in 1:293) {
  countSummaryExtant[n,16] <- sum(output3[n,])
}

# Get positions for data of interest
library("phytools")
plotTree(burkTree, cex="0.1", fsize=0.8)
nodelabels()
allCupRal <- getDescendants(burkTree, 548)
allBurkPara <- getDescendants(burkTree, 314)
allCupRal <- data.matrix(allCupRal)
allBurkPara <- data.matrix(allBurkPara)
CupRal <- matrix(, nrow=38, ncol=1)
BurkPara <- matrix(, nrow=227, ncol=1)
x <- 0;
for(n in 1:nrow(allCupRal)) {
  if(allCupRal[n,1] > 293) {
    x <- x + 1
    CupRal[x,1] <- allCupRal[n,1] - 293
  }
}
CupRal[x+1,1] <- 548 - 293
x <- 0;
for(n in 1:nrow(allBurkPara)) {
  if(allBurkPara[n,1] > 293) {
    x <- x + 1
    BurkPara[x,1] <- allBurkPara[n,1] - 293
  }
}
BurkPara[x+1,1] <- 314 - 293

# Extract data of interest
sizeCupRal <- matrix(, nrow=nrow(CupRal), ncol=2)
sizeBurkPara <- matrix(, nrow=nrow(BurkPara), ncol=2)
for(n in 1:nrow(CupRal)) {
  sizeCupRal[n,1] <- countSummaryAncestral[CupRal[n,1],15]
  sizeCupRal[n,2] <- countSummaryAncestral[CupRal[n,1],16]
}
for(n in 1:nrow(BurkPara)) {
  sizeBurkPara[n,1] <- countSummaryAncestral[BurkPara[n,1],12]
  sizeBurkPara[n,2] <- countSummaryAncestral[BurkPara[n,1],13]
}
save.image(file='sizeOutput.RData')





text=countSummaryAncestral[,5]
nodelabels(text=text,node=1:burkTree$Nnode+Ntip(burkTree), size=0.5,
           interactive=FALSE, frame="none",cex=0.8, adj=c(1.1,-0.4))


write.tree(burkTree, file="test.tre")





cupTree <- extract.clade(burkTree, 549)
plotTree(cupTree, cex="0.1", fsize=1)



cupDes <- getDescendants(burkTree, 549, curr=NULL)
cupDes <- matrix(cupDes)
test <- matrix(, nrow=nrow(cupDes), ncol=1)
for(n in 1:nrow(cupDes)) {
  
}
