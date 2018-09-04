# Set up directories
mkdir ProteomesHMM
mkdir HMMsearch
mkdir HMMsearchParsed
mkdir HMMsearchHits
mkdir HMMscan
#mkdir hmmDatabaseFiles
mkdir HMMscanParsed
mkdir HMMscanTop
mkdir OutputFiles
mkdir HMMscanProteins
mkdir Alignments

# Prepare protein files
perl Scripts/switchNames2.pl # switch the names of the proteins in the faa files
cat ProteomesHMM/*.faa > intermediaryFiles/combined_proteomes_HMM.faa # combine the faa files into one file
perl Scripts/modifyFasta.pl intermediaryFiles/combined_proteomes_HMM.faa > intermediaryFiles/combined_proteomes_HMM_modified.faa # modify the fasta file for easy extraction

# Perform the HMMsearch screens
perl Scripts/performHMMsearch.pl # a short script to repeat for all HMM files, the build, hmmsearch, parsing, and hit extraction

# Download and prepare HMM libraries
wget ftp://ftp.ebi.ac.uk/pub/databases/Pfam/current_release/Pfam-A.hmm.gz # get the Pfam HMM files
wget ftp://ftp.jcvi.org/pub/data/TIGRFAMs//TIGRFAMs_15.0_HMM.LIB.gz # get the TIGRFAM HMM files
gunzip Pfam-A.hmm.gz # unzip the Pfam files
gunzip TIGRFAMs_15.0_HMM.LIB.gz # unzip the TIGRFAM files
mv Pfam-A.hmm hmmDatabaseFiles/Pfam-A.hmm # move the Pfam files
mv TIGRFAMs_15.0_HMM.LIB.gz hmmDatabaseFiles/TIGRFAMs_15.0_HMM.LIB.gz # move the TIGRFAM files
hmmconvert hmmDatabaseFiles/Pfam-A.hmm > hmmDatabaseFiles/Pfam-A_converted.hmm # convert the database to the necessary format
hmmconvert hmmDatabaseFiles/TIGRFAMs_15.0_HMM.LIB > hmmDatabaseFiles/TIGRFAM_converted.hmm # convert the database to the necessary format
cat hmmDatabaseFiles/Pfam-A_converted.hmm hmmDatabaseFiles/TIGRFAM_converted.hmm > hmmDatabaseFiles/converted_combined.hmm # combined all hidden Markov models into a single file
hmmpress hmmDatabaseFiles/converted_combined.hmm # prepare files for hmmscan searches

# Perform the HMM scan screens
perl Scripts/performHMMscan.pl # a short script to repeat for all the HMM search output files, to perform hmmscan, parse, and hit extraction

# Get hits from HMMscan screens
perl Scripts/parseHMMscanHits.pl # a script to extract the names of proteins that have top hits to the desired HMMs
LC_ALL=C sort -k3,3 -g HMMscanTop/ParA_names.txt > HMMscanTop/ParA_names_sorted.txt
LC_ALL=C sort -k3,3 -g HMMscanTop/ParBc_names.txt > HMMscanTop/ParBc_names_sorted.txt
LC_ALL=C sort -k3,3 -g HMMscanTop/Rep_3_names.txt > HMMscanTop/Rep_3_names_sorted.txt
sort -u -k2,2 HMMscanTop/ParA_names_sorted.txt > HMMscanTop/ParA_names_unique.txt
sort -u -k2,2 HMMscanTop/ParBc_names_sorted.txt > HMMscanTop/ParBc_names_unique.txt
sort -u -k2,2 HMMscanTop/Rep_3_names_sorted.txt > HMMscanTop/Rep_3_names_unique.txt
perl Scripts/extractHMMscanHits.pl HMMscanTop/ParA_names_unique.txt > HMMscanProteins/ParA.faa # extract the ParA proteins
perl Scripts/extractHMMscanHits.pl HMMscanTop/ParBc_names_unique.txt > HMMscanProteins/ParBc.faa # extract the ParB proteins
perl Scripts/extractHMMscanHits.pl HMMscanTop/Rep_3_names_unique.txt > HMMscanProteins/Rep_3.faa # extract the Rep proteins

# Align and trim the hits
mafft --localpair --thread 40 HMMscanProteins/ParA.faa > Alignments/ParA_mafft.faa # align ParA proteins
mafft --localpair --thread 40 HMMscanProteins/ParBc.faa > Alignments/ParBc_mafft.faa # align ParB proteins
mafft --localpair --thread 40 HMMscanProteins/Rep_3.faa > Alignments/Rep_3_mafft.faa # align Rep proteins
PATH=$PATH:/home/georged/betaproteobacteria/trimAl/source # add trimal to path
trimal -in Alignments/ParA_mafft.faa -out Alignments/ParA_trimal.faa -fasta -automated1 # trim ParA alignment
trimal -in Alignments/ParBc_mafft.faa -out Alignments/ParBc_trimal.faa -fasta -automated1 # trim ParB alignment
trimal -in Alignments/Rep_3_mafft.faa -out Alignments/Rep_3_trimal.faa -fasta -automated1 # trim Rep alignment

# Make fasttree phylogeny
fasttree Alignments/ParA_trimal.faa > OutputFiles/ParA_fasttree.tre # phylogeny of ParA
fasttree Alignments/ParBc_trimal.faa > OutputFiles/ParBc_fasttree.tre # phylogeny of ParB
fasttree Alignments/Rep_3_trimal.faa > OutputFiles/Rep_3_fasttree.tre # phylogeny of Rep


