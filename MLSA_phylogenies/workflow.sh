## Make the phylogeny

# Make the necessary directories
mkdir intermediaryFiles
mkdir ProteomesNewNames
mkdir MarkerScannerOutput
mkdir MarkerScannerCounted
mkdir MarkerScannerGood
mkdir Mafft
mkdir TrimAl
mkdir TrimAlmodified
mkdir OutputFiles

# Prepare genomes
mv refseqGenomeInformation.txt intermediaryFiles/refseqGenomeInformation.txt
perl Scripts/switchNames.pl # switch the names of the proteins in the faa files
cat ProteomesNewNames/*.faa > intermediaryFiles/combined_proteomes.faa # combine the faa files into one file

# Run MarkerScanner analysis
perl Scripts/updateNumber.pl # updates the number of sequences in the MarkerScanner.pl script
perl Scripts/MarkerScannerNumber.pl -Bacteria intermediaryFiles/combined_proteomes.faa # perform the MarkerScanner analysis
mv *.pep MarkerScannerOutput/ # move output of MarkerScanner output directory
perl Scripts/countProteins.pl # check that the proteins are found in enough genomes
perl Scripts/checkSpecies.pl # check that in those genomes, the protein is found in single copy

# Run alignments and prepare concatenated alignment
PATH=$PATH:/home/georged/betaproteobacteria/trimAl/source # set path for trimAl
perl Scripts/align_trim.pl # run mafft on all individual sets of proteins
perl Scripts/modifyTrimAl.pl # modify the trimAl output to prepare it for combining the alignments
perl Scripts/sortProteins.pl # sort each of the trimAl output files that will be used for further analysis
perl Scripts/combineAlignments.pl > OutputFiles/MLSA_final_alignment_strains.fasta # concatenate the alignment files
perl Scripts/modifyFinalAlignment.pl OutputFiles/MLSA_final_alignment_strains.fasta > OutputFiles/MLSA_final_alignment_species.fasta # remove strain number

# Prepare phylogeny
FastTree OutputFiles/MLSA_final_alignment_species.fasta > OutputFiles/MLSA_FastTree_phylogeny_species_fasttree.tre # prepare a phylogeny with FastTree
# Ran RAxML on CIPRES

