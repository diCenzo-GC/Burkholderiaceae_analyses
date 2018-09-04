# Get proteomes
perl Scripts/moveFAA.pl
gunzip Proteomes/*
perl Scripts/switchNames.pl

# Calculate orthologous groups
cat ProteomesNewNames/* > cdhit_clustering/combinedProteome.faa # Concatenate the proteomes as one file
cdhit -i cdhit_clustering/combinedProteome.faa -o cdhit_clustering/output -c 0.4 -G 0 -M 50000 -T 30 -n 2 -d 0 -aS 0.7 # run cdhit

# Run ancestral state reconstruction
perl Scripts/modifyOutput.pl cdhit_clustering/output.clstr > cdhit_clustering/modifiedOutput.txt # modify the cdhit output to be one liners
perl Scripts/makeTable.pl > cdhit_clustering/outputTable.txt # make a table from the cdhit output
Rscript Scripts/performAncestral.r

# Analyze output
perl Scripts/getNames.pl cdhit_clustering/combinedProteome.faa > ancestral_state/combinedProteome_newNames.txt # get the new protein names
cat Proteomes/* > ancestral_state/combinedProteome_original.faa # Concatenate the original proteomes as one file
perl Scripts/getNames.pl ancestral_state/combinedProteome_original.faa > ancestral_state/combinedProteome_odlNames.txt # get the original protein names
cut -f1,1 -d' ' ancestral_state/combinedProteome_odlNames.txt > ancestral_state/combinedProteome_oldNames.txt # get just the names of the original protein names
rm ancestral_state/combinedProteome_odlNames.txt # remove this file
cp cdhit_clustering/modifiedOutput.txt ancestral_state/ # copy the modified output of cdhit
sed -i 's/>//g' ancestral_state/modifiedOutput.txt # remove the > from the files
grep '>' ../../pangenome/Roary/Good/Burkholderia_allGenus_chromid/pan_genome_reference.fa | sed 's/>//' | cut -f1,1 -d' ' > ancestral_state/pangenomeInputs/Burkholderia_allGenus_chromid_names.txt # get the protein names of this pangenome file
grep '>' ../../pangenome/Roary/Good/Burkholderia_allGenus_chromosome/pan_genome_reference.fa | sed 's/>//' | cut -f1,1 -d' ' > ancestral_state/pangenomeInputs/Burkholderia_allGenus_chromosome_names.txt # get the protein names of this pangenome file

grep '>' ../../pangenome/Roary/Good/Paraburkholderia_allGenus_chromosome/pan_genome_reference.fa | sed 's/>//' | cut -f1,1 -d' ' > ancestral_state/pangenomeInputs/Paraburkholderia_allGenus_chromosome_names.txt # get the protein names of this pangenome file
grep '>' ../../pangenome/Roary/Good/Paraburkholderia_allGenus_chromid/pan_genome_reference.fa | sed 's/>//' | cut -f1,1 -d' ' > ancestral_state/pangenomeInputs/Paraburkholderia_allGenus_chromid_names.txt # get the protein names of this pangenome file

grep '>' ../../pangenome/Roary/Good/Cupriavidus_allGenus_chromosome/pan_genome_reference.fa | sed 's/>//' | cut -f1,1 -d' ' > ancestral_state/pangenomeInputs/Cupriavidus_allGenus_chromosome_names.txt # get the protein names of this pangenome file
grep '>' ../../pangenome/Roary/Good/Cupriavidus_allGenus_chromid/pan_genome_reference.fa | sed 's/>//' | cut -f1,1 -d' ' > ancestral_state/pangenomeInputs/Cupriavidus_allGenus_chromid_names.txt # get the protein names of this pangenome file

grep '>' ../../pangenome/Roary/Good/Ralstonia_allGenus_chromosome/pan_genome_reference.fa | sed 's/>//' | cut -f1,1 -d' ' > ancestral_state/pangenomeInputs/Ralstonia_allGenus_chromosome_names.txt # get the protein names of this pangenome file
grep '>' ../../pangenome/Roary/Good/Ralstonia_allGenus_chromid/pan_genome_reference.fa | sed 's/>//' | cut -f1,1 -d' ' > ancestral_state/pangenomeInputs/Ralstonia_allGenus_chromid_names.txt # get the protein names of this pangenome file

grep '>' ../../pangenome/Roary/Good/Burkholderia_BCC_chromid/pan_genome_reference.fa | sed 's/>//' | cut -f1,1 -d' ' > ancestral_state/pangenomeInputs/BCC_chromid_names.txt # get the protein names of this pangenome file
grep '>' ../../pangenome/Roary/Good/Burkholderia_BCC_chromosome/pan_genome_reference.fa | sed 's/>//' | cut -f1,1 -d' ' > ancestral_state/pangenomeInputs/BCC_chromosome_names.txt # get the protein names of this pangenome file
grep '>' ../../pangenome/Roary/Good/Burkholderia_BCC_megaplasmid/pan_genome_reference.fa | sed 's/>//' | cut -f1,1 -d' ' > ancestral_state/pangenomeInputs/BCC_megaplasmid_names.txt # get the protein names of this pangenome file

grep '>' ../../pangenome/Roary/Good/Paraburkholderia_wMega_megaplasmid/pan_genome_reference.fa | sed 's/>//' | cut -f1,1 -d' ' > ancestral_state/pangenomeInputs/Paraburkholderia_megaplasmid_names.txt # get the protein names of this pangenome file





perl Scripts/getClusters.pl > ancestral_state/protein_to_clusters.txt
