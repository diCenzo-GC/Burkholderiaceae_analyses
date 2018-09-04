# Make directories
mkdir repliconGFFs/
chmod 777 repliconGFFs/
mkdir Proteomes/
chmod 777 Proteomes/
mkdir nucleotidePangenomes/
chmod 777 nucleotidePangenomes/
mkdir nucleotidePangenomes/Original/
chmod 777 nucleotidePangenomes/Original/
mkdir nucleotidePangenomes/GenePresence/
chmod 777 nucleotidePangenomes/GenePresence/
mkdir nucleotidePangenomes/OneLine/
chmod 777 nucleotidePangenomes/OneLine/
mkdir nucleotidePangenomes/AccessoryList/
chmod 777 nucleotidePangenomes/AccessoryList/
mkdir nucleotidePangenomes/AccessoryPangenome/
chmod 777 nucleotidePangenomes/AccessoryPangenomes/
mkdir emapperOutput/
chmod 777 emapperOutput/
mkdir COG_categories/
chmod 777 COG_categories/

# Get replicon GFFs for the representative genomes
cp ../pangenome/repliconGFFs/NC_008390.1.gff repliconGFFs/
cp ../pangenome/repliconGFFs/NC_008391.1.gff repliconGFFs/
cp ../pangenome/repliconGFFs/NC_008392.1.gff repliconGFFs/
cp ../pangenome/repliconGFFs/NC_008385.1.gff repliconGFFs/
cp ../pangenome/repliconGFFs/NZ_CP009209.1.gff repliconGFFs/
cp ../pangenome/repliconGFFs/NZ_CP009210.1.gff repliconGFFs/
cp ../pangenome/repliconGFFs/NC_010622.1.gff repliconGFFs/
cp ../pangenome/repliconGFFs/NC_010623.1.gff repliconGFFs/
cp ../pangenome/repliconGFFs/NC_010625.1.gff repliconGFFs/
cp ../pangenome/repliconGFFs/NC_010627.1.gff repliconGFFs/
cp ../pangenome/repliconGFFs/NC_010681.1.gff repliconGFFs/
cp ../pangenome/repliconGFFs/NC_010676.1.gff repliconGFFs/
cp ../pangenome/repliconGFFs/NC_010679.1.gff repliconGFFs/
cp ../pangenome/repliconGFFs/NC_010528.1.gff repliconGFFs/
cp ../pangenome/repliconGFFs/NC_010530.1.gff repliconGFFs/
cp ../pangenome/repliconGFFs/NC_010529.1.gff repliconGFFs/
cp ../pangenome/repliconGFFs/NC_008313.1.gff repliconGFFs/
cp ../pangenome/repliconGFFs/NC_008314.1.gff repliconGFFs/
cp ../pangenome/repliconGFFs/NC_005241.1.gff repliconGFFs/
cp ../pangenome/repliconGFFs/NZ_CP010518.3.gff repliconGFFs/
cp ../pangenome/repliconGFFs/NZ_CP011568.3.gff repliconGFFs/
cp ../pangenome/repliconGFFs/NZ_CP015016.1.gff repliconGFFs/

# Extract the proteomes
perl Scripts/extract_proteome_from_gff.pl repliconGFFs/NC_008390.1.gff
perl Scripts/extract_proteome_from_gff.pl repliconGFFs/NC_008391.1.gff
perl Scripts/extract_proteome_from_gff.pl repliconGFFs/NC_008392.1.gff
perl Scripts/extract_proteome_from_gff.pl repliconGFFs/NC_008385.1.gff
perl Scripts/extract_proteome_from_gff.pl repliconGFFs/NZ_CP009209.1.gff
perl Scripts/extract_proteome_from_gff.pl repliconGFFs/NZ_CP009210.1.gff
perl Scripts/extract_proteome_from_gff.pl repliconGFFs/NC_010622.1.gff
perl Scripts/extract_proteome_from_gff.pl repliconGFFs/NC_010623.1.gff
perl Scripts/extract_proteome_from_gff.pl repliconGFFs/NC_010625.1.gff
perl Scripts/extract_proteome_from_gff.pl repliconGFFs/NC_010627.1.gff
perl Scripts/extract_proteome_from_gff.pl repliconGFFs/NC_010681.1.gff
perl Scripts/extract_proteome_from_gff.pl repliconGFFs/NC_010676.1.gff
perl Scripts/extract_proteome_from_gff.pl repliconGFFs/NC_010679.1.gff
perl Scripts/extract_proteome_from_gff.pl repliconGFFs/NC_010528.1.gff
perl Scripts/extract_proteome_from_gff.pl repliconGFFs/NC_010530.1.gff
perl Scripts/extract_proteome_from_gff.pl repliconGFFs/NC_010529.1.gff
perl Scripts/extract_proteome_from_gff.pl repliconGFFs/NC_008313.1.gff
perl Scripts/extract_proteome_from_gff.pl repliconGFFs/NC_008314.1.gff
perl Scripts/extract_proteome_from_gff.pl repliconGFFs/NC_005241.1.gff
perl Scripts/extract_proteome_from_gff.pl repliconGFFs/NZ_CP010518.3.gff
perl Scripts/extract_proteome_from_gff.pl repliconGFFs/NZ_CP011568.3.gff
perl Scripts/extract_proteome_from_gff.pl repliconGFFs/NZ_CP015016.1.gff
mv *.faa Proteomes/

# Get the replicon nucleotide pangnome files
cp ../pangenome/Roary/Good/Burkholderia_allGenus_chromosome/pan_genome_reference.fa nucleotidePangenomes/Original/Burkholderia_allGenus_chromosome.fasta
cp ../pangenome/Roary/Good/Burkholderia_allGenus_chromid/pan_genome_reference.fa nucleotidePangenomes/Original/Burkholderia_allGenus_chromid.fasta
cp ../pangenome/Roary/Good/Burkholderia_BCC_chromosome/pan_genome_reference.fa nucleotidePangenomes/Original/Burkholderia_BCC_chromosome.fasta
cp ../pangenome/Roary/Good/Burkholderia_BCC_chromid/pan_genome_reference.fa nucleotidePangenomes/Original/Burkholderia_BCC_chromid.fasta
cp ../pangenome/Roary/Good/Burkholderia_BCC_megaplasmid/pan_genome_reference.fa nucleotidePangenomes/Original/Burkholderia_BCC_megaplasmid.fasta
cp ../pangenome/Roary/Good/Burkholderia_nonBCC_chromosome/pan_genome_reference.fa nucleotidePangenomes/Original/Burkholderia_nonBCC_chromosome.fasta
cp ../pangenome/Roary/Good/Burkholderia_nonBCC_chromid/pan_genome_reference.fa nucleotidePangenomes/Original/Burkholderia_nonBCC_chromid.fasta
cp ../pangenome/Roary/Good/Paraburkholderia_allGenus_chromosome/pan_genome_reference.fa nucleotidePangenomes/Original/Paraburkholderia_allGenus_chromosome.fasta
cp ../pangenome/Roary/Good/Paraburkholderia_allGenus_chromid/pan_genome_reference.fa nucleotidePangenomes/Original/Paraburkholderia_allGenus_chromid.fasta
cp ../pangenome/Roary/Good/Paraburkholderia_woMega_chromosome/pan_genome_reference.fa nucleotidePangenomes/Original/Paraburkholderia_woMega_chromosome.fasta
cp ../pangenome/Roary/Good/Paraburkholderia_woMega_chromid/pan_genome_reference.fa nucleotidePangenomes/Original/Paraburkholderia_woMega_chromid.fasta
cp ../pangenome/Roary/Good/Paraburkholderia_wMega_chromosome/pan_genome_reference.fa nucleotidePangenomes/Original/Paraburkholderia_wMega_chromosome.fasta
cp ../pangenome/Roary/Good/Paraburkholderia_wMega_chromid/pan_genome_reference.fa nucleotidePangenomes/Original/Paraburkholderia_wMega_chromid.fasta
cp ../pangenome/Roary/Good/Paraburkholderia_wMega_megaplasmid/pan_genome_reference.fa nucleotidePangenomes/Original/Paraburkholderia_wMega_megaplasmid.fasta
cp ../pangenome/Roary/Good/Cupriavidus_allGenus_chromosome/pan_genome_reference.fa nucleotidePangenomes/Original/Cupriavidus_allGenus_chromosome.fasta
cp ../pangenome/Roary/Good/Cupriavidus_allGenus_chromid/pan_genome_reference.fa nucleotidePangenomes/Original/Cupriavidus_allGenus_chromid.fasta
cp ../pangenome/Roary/Good/Ralstonia_allGenus_chromosome/pan_genome_reference.fa nucleotidePangenomes/Original/Ralstonia_allGenus_chromosome.fasta
cp ../pangenome/Roary/Good/Ralstonia_allGenus_chromid/pan_genome_reference.fa nucleotidePangenomes/Original/Ralstonia_allGenus_chromid.fasta
cp ../pangenome/Roary/Good/Pandoraea_allGenus_chromosome/pan_genome_reference.fa nucleotidePangenomes/Original/Pandoraea_allGenus_chromosome.fasta
cp ../pangenome/Roary/Good/Polynucleobacter_allGenus_chromosome/pan_genome_reference.fa nucleotidePangenomes/Original/Polynucleobacter_allGenus_chromosome.fasta

# Get the replicon nucleotide gene_presence_absence files
cp ../pangenome/Roary/Good/Burkholderia_allGenus_chromosome/gene_presence_absence.csv nucleotidePangenomes/GenePresence/Burkholderia_allGenus_chromosome.csv
cp ../pangenome/Roary/Good/Burkholderia_allGenus_chromid/gene_presence_absence.csv nucleotidePangenomes/GenePresence/Burkholderia_allGenus_chromid.csv
cp ../pangenome/Roary/Good/Burkholderia_BCC_chromosome/gene_presence_absence.csv nucleotidePangenomes/GenePresence/Burkholderia_BCC_chromosome.csv
cp ../pangenome/Roary/Good/Burkholderia_BCC_chromid/gene_presence_absence.csv nucleotidePangenomes/GenePresence/Burkholderia_BCC_chromid.csv
cp ../pangenome/Roary/Good/Burkholderia_BCC_megaplasmid/gene_presence_absence.csv nucleotidePangenomes/GenePresence/Burkholderia_BCC_megaplasmid.csv
cp ../pangenome/Roary/Good/Burkholderia_nonBCC_chromosome/gene_presence_absence.csv nucleotidePangenomes/GenePresence/Burkholderia_nonBCC_chromosome.csv
cp ../pangenome/Roary/Good/Burkholderia_nonBCC_chromid/gene_presence_absence.csv nucleotidePangenomes/GenePresence/Burkholderia_nonBCC_chromid.csv
cp ../pangenome/Roary/Good/Paraburkholderia_allGenus_chromosome/gene_presence_absence.csv nucleotidePangenomes/GenePresence/Paraburkholderia_allGenus_chromosome.csv
cp ../pangenome/Roary/Good/Paraburkholderia_allGenus_chromid/gene_presence_absence.csv nucleotidePangenomes/GenePresence/Paraburkholderia_allGenus_chromid.csv
cp ../pangenome/Roary/Good/Paraburkholderia_woMega_chromosome/gene_presence_absence.csv nucleotidePangenomes/GenePresence/Paraburkholderia_woMega_chromosome.csv
cp ../pangenome/Roary/Good/Paraburkholderia_woMega_chromid/gene_presence_absence.csv nucleotidePangenomes/GenePresence/Paraburkholderia_woMega_chromid.csv
cp ../pangenome/Roary/Good/Paraburkholderia_wMega_chromosome/gene_presence_absence.csv nucleotidePangenomes/GenePresence/Paraburkholderia_wMega_chromosome.csv
cp ../pangenome/Roary/Good/Paraburkholderia_wMega_chromid/gene_presence_absence.csv nucleotidePangenomes/GenePresence/Paraburkholderia_wMega_chromid.csv
cp ../pangenome/Roary/Good/Paraburkholderia_wMega_megaplasmid/gene_presence_absence.csv nucleotidePangenomes/GenePresence/Paraburkholderia_wMega_megaplasmid.csv
cp ../pangenome/Roary/Good/Cupriavidus_allGenus_chromosome/gene_presence_absence.csv nucleotidePangenomes/GenePresence/Cupriavidus_allGenus_chromosome.csv
cp ../pangenome/Roary/Good/Cupriavidus_allGenus_chromid/gene_presence_absence.csv nucleotidePangenomes/GenePresence/Cupriavidus_allGenus_chromid.csv
cp ../pangenome/Roary/Good/Ralstonia_allGenus_chromosome/gene_presence_absence.csv nucleotidePangenomes/GenePresence/Ralstonia_allGenus_chromosome.csv
cp ../pangenome/Roary/Good/Ralstonia_allGenus_chromid/gene_presence_absence.csv nucleotidePangenomes/GenePresence/Ralstonia_allGenus_chromid.csv
cp ../pangenome/Roary/Good/Pandoraea_allGenus_chromosome/gene_presence_absence.csv nucleotidePangenomes/GenePresence/Pandoraea_allGenus_chromosome.csv
cp ../pangenome/Roary/Good/Polynucleobacter_allGenus_chromosome/gene_presence_absence.csv nucleotidePangenomes/GenePresence/Polynucleobacter_allGenus_chromosome.csv

# Modify format of nucleotide pangenomes to be one liners
perl Scripts/modifyFasta.pl nucleotidePangenomes/Original/Burkholderia_allGenus_chromosome.fasta > nucleotidePangenomes/OneLine/Burkholderia_allGenus_chromosome.fasta
perl Scripts/modifyFasta.pl nucleotidePangenomes/Original/Burkholderia_allGenus_chromid.fasta > nucleotidePangenomes/OneLine/Burkholderia_allGenus_chromid.fasta
perl Scripts/modifyFasta.pl nucleotidePangenomes/Original/Burkholderia_BCC_chromosome.fasta > nucleotidePangenomes/OneLine/Burkholderia_BCC_chromosome.fasta
perl Scripts/modifyFasta.pl nucleotidePangenomes/Original/Burkholderia_BCC_chromid.fasta > nucleotidePangenomes/OneLine/Burkholderia_BCC_chromid.fasta
perl Scripts/modifyFasta.pl nucleotidePangenomes/Original/Burkholderia_BCC_megaplasmid.fasta > nucleotidePangenomes/OneLine/Burkholderia_BCC_megaplasmid.fasta
perl Scripts/modifyFasta.pl nucleotidePangenomes/Original/Burkholderia_nonBCC_chromosome.fasta > nucleotidePangenomes/OneLine/Burkholderia_nonBCC_chromosome.fasta
perl Scripts/modifyFasta.pl nucleotidePangenomes/Original/Burkholderia_nonBCC_chromid.fasta > nucleotidePangenomes/OneLine/Burkholderia_nonBCC_chromid.fasta
perl Scripts/modifyFasta.pl nucleotidePangenomes/Original/Paraburkholderia_allGenus_chromosome.fasta > nucleotidePangenomes/OneLine/Paraburkholderia_allGenus_chromosome.fasta
perl Scripts/modifyFasta.pl nucleotidePangenomes/Original/Paraburkholderia_allGenus_chromid.fasta > nucleotidePangenomes/OneLine/Paraburkholderia_allGenus_chromid.fasta
perl Scripts/modifyFasta.pl nucleotidePangenomes/Original/Paraburkholderia_woMega_chromosome.fasta > nucleotidePangenomes/OneLine/Paraburkholderia_woMega_chromosome.fasta
perl Scripts/modifyFasta.pl nucleotidePangenomes/Original/Paraburkholderia_woMega_chromid.fasta > nucleotidePangenomes/OneLine/Paraburkholderia_woMega_chromid.fasta
perl Scripts/modifyFasta.pl nucleotidePangenomes/Original/Paraburkholderia_wMega_chromosome.fasta > nucleotidePangenomes/OneLine/Paraburkholderia_wMega_chromosome.fasta
perl Scripts/modifyFasta.pl nucleotidePangenomes/Original/Paraburkholderia_wMega_chromid.fasta > nucleotidePangenomes/OneLine/Paraburkholderia_wMega_chromid.fasta
perl Scripts/modifyFasta.pl nucleotidePangenomes/Original/Paraburkholderia_wMega_megaplasmid.fasta > nucleotidePangenomes/OneLine/Paraburkholderia_wMega_megaplasmid.fasta
perl Scripts/modifyFasta.pl nucleotidePangenomes/Original/Cupriavidus_allGenus_chromosome.fasta > nucleotidePangenomes/OneLine/Cupriavidus_allGenus_chromosome.fasta
perl Scripts/modifyFasta.pl nucleotidePangenomes/Original/Cupriavidus_allGenus_chromid.fasta > nucleotidePangenomes/OneLine/Cupriavidus_allGenus_chromid.fasta
perl Scripts/modifyFasta.pl nucleotidePangenomes/Original/Ralstonia_allGenus_chromosome.fasta > nucleotidePangenomes/OneLine/Ralstonia_allGenus_chromosome.fasta
perl Scripts/modifyFasta.pl nucleotidePangenomes/Original/Ralstonia_allGenus_chromid.fasta > nucleotidePangenomes/OneLine/Ralstonia_allGenus_chromid.fasta
perl Scripts/modifyFasta.pl nucleotidePangenomes/Original/Pandoraea_allGenus_chromosome.fasta > nucleotidePangenomes/OneLine/Pandoraea_allGenus_chromosome.fasta
perl Scripts/modifyFasta.pl nucleotidePangenomes/Original/Polynucleobacter_allGenus_chromosome.fasta > nucleotidePangenomes/OneLine/Polynucleobacter_allGenus_chromosome.fasta

# Extract the list of accessory genes in less than 95% of genomes
cd Scripts
matlab --nodesktop --nosplash -r extractAccessoryNames
cd ..
tail -n +2 nucleotidePangenomes/AccessoryList/Burkholderia_allGenus_chromosome.txt > temp.txt
mv temp.txt nucleotidePangenomes/AccessoryList/Burkholderia_allGenus_chromosome.txt
tail -n +2 nucleotidePangenomes/AccessoryList/Burkholderia_allGenus_chromid.txt > temp.txt
mv temp.txt nucleotidePangenomes/AccessoryList/Burkholderia_allGenus_chromid.txt
tail -n +2 nucleotidePangenomes/AccessoryList/Burkholderia_BCC_chromosome.txt > temp.txt
mv temp.txt nucleotidePangenomes/AccessoryList/Burkholderia_BCC_chromosome.txt
tail -n +2 nucleotidePangenomes/AccessoryList/Burkholderia_BCC_chromid.txt > temp.txt
mv temp.txt nucleotidePangenomes/AccessoryList/Burkholderia_BCC_chromid.txt
tail -n +2 nucleotidePangenomes/AccessoryList/Burkholderia_BCC_megaplasmid.txt > temp.txt
mv temp.txt nucleotidePangenomes/AccessoryList/Burkholderia_BCC_megaplasmid.txt
tail -n +2 nucleotidePangenomes/AccessoryList/Burkholderia_nonBCC_chromosome.txt > temp.txt
mv temp.txt nucleotidePangenomes/AccessoryList/Burkholderia_nonBCC_chromosome.txt
tail -n +2 nucleotidePangenomes/AccessoryList/Burkholderia_nonBCC_chromid.txt > temp.txt
mv temp.txt nucleotidePangenomes/AccessoryList/Burkholderia_nonBCC_chromid.txt
tail -n +2 nucleotidePangenomes/AccessoryList/Paraburkholderia_allGenus_chromosome.txt > temp.txt
mv temp.txt nucleotidePangenomes/AccessoryList/Paraburkholderia_allGenus_chromosome.txt
tail -n +2 nucleotidePangenomes/AccessoryList/Paraburkholderia_allGenus_chromid.txt > temp.txt
mv temp.txt nucleotidePangenomes/AccessoryList/Paraburkholderia_allGenus_chromid.txt
tail -n +2 nucleotidePangenomes/AccessoryList/Paraburkholderia_woMega_chromosome.txt > temp.txt
mv temp.txt nucleotidePangenomes/AccessoryList/Paraburkholderia_woMega_chromosome.txt
tail -n +2 nucleotidePangenomes/AccessoryList/Paraburkholderia_woMega_chromid.txt > temp.txt
mv temp.txt nucleotidePangenomes/AccessoryList/Paraburkholderia_woMega_chromid.txt
tail -n +2 nucleotidePangenomes/AccessoryList/Paraburkholderia_wMega_chromosome.txt > temp.txt
mv temp.txt nucleotidePangenomes/AccessoryList/Paraburkholderia_wMega_chromosome.txt
tail -n +2 nucleotidePangenomes/AccessoryList/Paraburkholderia_wMega_chromid.txt > temp.txt
mv temp.txt nucleotidePangenomes/AccessoryList/Paraburkholderia_wMega_chromid.txt
tail -n +2 nucleotidePangenomes/AccessoryList/Paraburkholderia_wMega_megaplasmid.txt > temp.txt
mv temp.txt nucleotidePangenomes/AccessoryList/Paraburkholderia_wMega_megaplasmid.txt
tail -n +2 nucleotidePangenomes/AccessoryList/Cupriavidus_allGenus_chromosome.txt > temp.txt
mv temp.txt nucleotidePangenomes/AccessoryList/Cupriavidus_allGenus_chromosome.txt
tail -n +2 nucleotidePangenomes/AccessoryList/Cupriavidus_allGenus_chromid.txt > temp.txt
mv temp.txt nucleotidePangenomes/AccessoryList/Cupriavidus_allGenus_chromid.txt
tail -n +2 nucleotidePangenomes/AccessoryList/Ralstonia_allGenus_chromosome.txt > temp.txt
mv temp.txt nucleotidePangenomes/AccessoryList/Ralstonia_allGenus_chromosome.txt
tail -n +2 nucleotidePangenomes/AccessoryList/Ralstonia_allGenus_chromid.txt > temp.txt
mv temp.txt nucleotidePangenomes/AccessoryList/Ralstonia_allGenus_chromid.txt
tail -n +2 nucleotidePangenomes/AccessoryList/Pandoraea_allGenus_chromosome.txt > temp.txt
mv temp.txt nucleotidePangenomes/AccessoryList/Pandoraea_allGenus_chromosome.txt
tail -n +2 nucleotidePangenomes/AccessoryList/Polynucleobacter_allGenus_chromosome.txt > temp.txt
mv temp.txt nucleotidePangenomes/AccessoryList/Polynucleobacter_allGenus_chromosome.txt
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryList/Burkholderia_allGenus_chromosome.txt
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryList/Burkholderia_allGenus_chromid.txt
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryList/Burkholderia_BCC_chromosome.txt
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryList/Burkholderia_BCC_chromid.txt
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryList/Burkholderia_BCC_megaplasmid.txt
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryList/Burkholderia_nonBCC_chromosome.txt
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryList/Burkholderia_nonBCC_chromid.txt
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryList/Paraburkholderia_allGenus_chromosome.txt
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryList/Paraburkholderia_allGenus_chromid.txt
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryList/Paraburkholderia_woMega_chromosome.txt
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryList/Paraburkholderia_woMega_chromid.txt
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryList/Paraburkholderia_wMega_chromosome.txt
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryList/Paraburkholderia_wMega_chromid.txt
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryList/Paraburkholderia_wMega_megaplasmid.txt
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryList/Cupriavidus_allGenus_chromosome.txt
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryList/Cupriavidus_allGenus_chromid.txt
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryList/Ralstonia_allGenus_chromosome.txt
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryList/Ralstonia_allGenus_chromid.txt
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryList/Pandoraea_allGenus_chromosome.txt
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryList/Polynucleobacter_allGenus_chromosome.txt

# Get the accessory pangenome
grep -f 'nucleotidePangenomes/AccessoryList/Burkholderia_allGenus_chromosome.txt' nucleotidePangenomes/OneLine/Burkholderia_allGenus_chromosome.fasta > nucleotidePangenomes/AccessoryPangenome/Burkholderia_allGenus_chromosome.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Burkholderia_allGenus_chromid.txt' nucleotidePangenomes/OneLine/Burkholderia_allGenus_chromid.fasta > nucleotidePangenomes/AccessoryPangenome/Burkholderia_allGenus_chromid.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Burkholderia_BCC_chromosome.txt' nucleotidePangenomes/OneLine/Burkholderia_BCC_chromosome.fasta > nucleotidePangenomes/AccessoryPangenome/Burkholderia_BCC_chromosome.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Burkholderia_BCC_chromid.txt' nucleotidePangenomes/OneLine/Burkholderia_BCC_chromid.fasta > nucleotidePangenomes/AccessoryPangenome/Burkholderia_BCC_chromid.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Burkholderia_BCC_megaplasmid.txt' nucleotidePangenomes/OneLine/Burkholderia_BCC_megaplasmid.fasta > nucleotidePangenomes/AccessoryPangenome/Burkholderia_BCC_megaplasmid.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Burkholderia_nonBCC_chromosome.txt' nucleotidePangenomes/OneLine/Burkholderia_nonBCC_chromosome.fasta > nucleotidePangenomes/AccessoryPangenome/Burkholderia_nonBCC_chromosome.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Burkholderia_nonBCC_chromid.txt' nucleotidePangenomes/OneLine/Burkholderia_nonBCC_chromid.fasta > nucleotidePangenomes/AccessoryPangenome/Burkholderia_nonBCC_chromid.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Paraburkholderia_allGenus_chromosome.txt' nucleotidePangenomes/OneLine/Paraburkholderia_allGenus_chromosome.fasta > nucleotidePangenomes/AccessoryPangenome/Paraburkholderia_allGenus_chromosome.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Paraburkholderia_allGenus_chromid.txt' nucleotidePangenomes/OneLine/Paraburkholderia_allGenus_chromid.fasta > nucleotidePangenomes/AccessoryPangenome/Paraburkholderia_allGenus_chromid.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Paraburkholderia_woMega_chromosome.txt' nucleotidePangenomes/OneLine/Paraburkholderia_woMega_chromosome.fasta > nucleotidePangenomes/AccessoryPangenome/Paraburkholderia_woMega_chromosome.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Paraburkholderia_woMega_chromid.txt' nucleotidePangenomes/OneLine/Paraburkholderia_woMega_chromid.fasta > nucleotidePangenomes/AccessoryPangenome/Paraburkholderia_woMega_chromid.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Paraburkholderia_wMega_chromosome.txt' nucleotidePangenomes/OneLine/Paraburkholderia_wMega_chromosome.fasta > nucleotidePangenomes/AccessoryPangenome/Paraburkholderia_wMega_chromosome.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Paraburkholderia_wMega_chromid.txt' nucleotidePangenomes/OneLine/Paraburkholderia_wMega_chromid.fasta > nucleotidePangenomes/AccessoryPangenome/Paraburkholderia_wMega_chromid.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Paraburkholderia_wMega_megaplasmid.txt' nucleotidePangenomes/OneLine/Paraburkholderia_wMega_megaplasmid.fasta > nucleotidePangenomes/AccessoryPangenome/Paraburkholderia_wMega_megaplasmid.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Cupriavidus_allGenus_chromosome.txt' nucleotidePangenomes/OneLine/Cupriavidus_allGenus_chromosome.fasta > nucleotidePangenomes/AccessoryPangenome/Cupriavidus_allGenus_chromosome.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Cupriavidus_allGenus_chromid.txt' nucleotidePangenomes/OneLine/Cupriavidus_allGenus_chromid.fasta > nucleotidePangenomes/AccessoryPangenome/Cupriavidus_allGenus_chromid.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Ralstonia_allGenus_chromosome.txt' nucleotidePangenomes/OneLine/Ralstonia_allGenus_chromosome.fasta > nucleotidePangenomes/AccessoryPangenome/Ralstonia_allGenus_chromosome.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Ralstonia_allGenus_chromid.txt' nucleotidePangenomes/OneLine/Ralstonia_allGenus_chromid.fasta > nucleotidePangenomes/AccessoryPangenome/Ralstonia_allGenus_chromid.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Pandoraea_allGenus_chromosome.txt' nucleotidePangenomes/OneLine/Pandoraea_allGenus_chromosome.fasta > nucleotidePangenomes/AccessoryPangenome/Pandoraea_allGenus_chromosome.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Polynucleobacter_allGenus_chromosome.txt' nucleotidePangenomes/OneLine/Polynucleobacter_allGenus_chromosome.fasta > nucleotidePangenomes/AccessoryPangenome/Polynucleobacter_allGenus_chromosome.fasta &

# Revert accessory pangenomes to two-line fasta
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryPangenome/Burkholderia_allGenus_chromosome.fasta
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryPangenome/Burkholderia_allGenus_chromid.fasta
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryPangenome/Burkholderia_BCC_chromosome.fasta
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryPangenome/Burkholderia_BCC_chromid.fasta
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryPangenome/Burkholderia_BCC_megaplasmid.fasta
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryPangenome/Burkholderia_nonBCC_chromosome.fasta
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryPangenome/Burkholderia_nonBCC_chromid.fasta
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryPangenome/Paraburkholderia_allGenus_chromosome.fasta
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryPangenome/Paraburkholderia_allGenus_chromid.fasta
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryPangenome/Paraburkholderia_woMega_chromosome.fasta
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryPangenome/Paraburkholderia_woMega_chromid.fasta
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryPangenome/Paraburkholderia_wMega_chromosome.fasta
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryPangenome/Paraburkholderia_wMega_chromid.fasta
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryPangenome/Paraburkholderia_wMega_megaplasmid.fasta
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryPangenome/Cupriavidus_allGenus_chromosome.fasta
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryPangenome/Cupriavidus_allGenus_chromid.fasta
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryPangenome/Ralstonia_allGenus_chromosome.fasta
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryPangenome/Ralstonia_allGenus_chromid.fasta
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryPangenome/Pandoraea_allGenus_chromosome.fasta
sed -i 's/\t/\n/g' nucleotidePangenomes/AccessoryPangenome/Polynucleobacter_allGenus_chromosome.fasta

# Convert nucleotide accessory pangenome to protein accessory pangenome
transeq -sequence nucleotidePangenomes/AccessoryPangenome/Burkholderia_allGenus_chromosome.fasta -outseq Proteomes/Burkholderia_allGenus_chromosome.fasta -trim
transeq -sequence nucleotidePangenomes/AccessoryPangenome/Burkholderia_allGenus_chromid.fasta -outseq Proteomes/Burkholderia_allGenus_chromid.fasta -trim
transeq -sequence nucleotidePangenomes/AccessoryPangenome/Burkholderia_BCC_chromosome.fasta -outseq Proteomes/Burkholderia_BCC_chromosome.fasta -trim
transeq -sequence nucleotidePangenomes/AccessoryPangenome/Burkholderia_BCC_chromid.fasta -outseq Proteomes/Burkholderia_BCC_chromid.fasta -trim
transeq -sequence nucleotidePangenomes/AccessoryPangenome/Burkholderia_BCC_megaplasmid.fasta -outseq Proteomes/Burkholderia_BCC_megaplasmid.fasta -trim
transeq -sequence nucleotidePangenomes/AccessoryPangenome/Burkholderia_nonBCC_chromosome.fasta -outseq Proteomes/Burkholderia_nonBCC_chromosome.fasta -trim
transeq -sequence nucleotidePangenomes/AccessoryPangenome/Burkholderia_nonBCC_chromid.fasta -outseq Proteomes/Burkholderia_nonBCC_chromid.fasta -trim
transeq -sequence nucleotidePangenomes/AccessoryPangenome/Paraburkholderia_allGenus_chromosome.fasta -outseq Proteomes/Paraburkholderia_allGenus_chromosome.fasta -trim
transeq -sequence nucleotidePangenomes/AccessoryPangenome/Paraburkholderia_allGenus_chromid.fasta -outseq Proteomes/Paraburkholderia_allGenus_chromid.fasta -trim
transeq -sequence nucleotidePangenomes/AccessoryPangenome/Paraburkholderia_woMega_chromosome.fasta -outseq Proteomes/Paraburkholderia_woMega_chromosome.fasta -trim
transeq -sequence nucleotidePangenomes/AccessoryPangenome/Paraburkholderia_woMega_chromid.fasta -outseq Proteomes/Paraburkholderia_woMega_chromid.fasta -trim
transeq -sequence nucleotidePangenomes/AccessoryPangenome/Paraburkholderia_wMega_chromosome.fasta -outseq Proteomes/Paraburkholderia_wMega_chromosome.fasta -trim
transeq -sequence nucleotidePangenomes/AccessoryPangenome/Paraburkholderia_wMega_chromid.fasta -outseq Proteomes/Paraburkholderia_wMega_chromid.fasta -trim
transeq -sequence nucleotidePangenomes/AccessoryPangenome/Paraburkholderia_wMega_megaplasmid.fasta -outseq Proteomes/Paraburkholderia_wMega_megaplasmid.fasta -trim
transeq -sequence nucleotidePangenomes/AccessoryPangenome/Cupriavidus_allGenus_chromosome.fasta -outseq Proteomes/Cupriavidus_allGenus_chromosome.fasta -trim
transeq -sequence nucleotidePangenomes/AccessoryPangenome/Cupriavidus_allGenus_chromid.fasta -outseq Proteomes/Cupriavidus_allGenus_chromid.fasta -trim
transeq -sequence nucleotidePangenomes/AccessoryPangenome/Ralstonia_allGenus_chromosome.fasta -outseq Proteomes/Ralstonia_allGenus_chromosome.fasta -trim
transeq -sequence nucleotidePangenomes/AccessoryPangenome/Ralstonia_allGenus_chromid.fasta -outseq Proteomes/Ralstonia_allGenus_chromid.fasta -trim
transeq -sequence nucleotidePangenomes/AccessoryPangenome/Pandoraea_allGenus_chromosome.fasta -outseq Proteomes/Pandoraea_allGenus_chromosome.fasta -trim
transeq -sequence nucleotidePangenomes/AccessoryPangenome/Polynucleobacter_allGenus_chromosome.fasta -outseq Proteomes/Polynucleobacter_allGenus_chromosome.fasta -trim

# Run eggnog-mapper to functionally annotate everything
emapper.py -i Proteomes/Burkholderia_allGenus_chromid.fasta --output emapperOutput/Burkholderia_allGenus_chromid.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/Burkholderia_allGenus_chromosome.fasta --output emapperOutput/Burkholderia_allGenus_chromosome.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/Burkholderia_BCC_chromid.fasta --output emapperOutput/Burkholderia_BCC_chromid.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/Burkholderia_BCC_chromosome.fasta --output emapperOutput/Burkholderia_BCC_chromosome.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/Burkholderia_BCC_megaplasmid.fasta --output emapperOutput/Burkholderia_BCC_megaplasmid.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/Burkholderia_nonBCC_chromid.fasta --output emapperOutput/Burkholderia_nonBCC_chromid.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/Burkholderia_nonBCC_chromosome.fasta --output emapperOutput/Burkholderia_nonBCC_chromosome.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/Cupriavidus_allGenus_chromid.fasta --output emapperOutput/Cupriavidus_allGenus_chromid.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/Cupriavidus_allGenus_chromosome.fasta --output emapperOutput/Cupriavidus_allGenus_chromosome.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/NC_005241.1.gff.proteome.faa --output emapperOutput/NC_005241.1.gff.proteome.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/NC_008313.1.gff.proteome.faa --output emapperOutput/NC_008313.1.gff.proteome.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/NC_008314.1.gff.proteome.faa --output emapperOutput/NC_008314.1.gff.proteome.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/NC_008385.1.gff.proteome.faa --output emapperOutput/NC_008385.1.gff.proteome.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/NC_008390.1.gff.proteome.faa --output emapperOutput/NC_008390.1.gff.proteome.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/NC_008391.1.gff.proteome.faa --output emapperOutput/NC_008391.1.gff.proteome.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/NC_008392.1.gff.proteome.faa --output emapperOutput/NC_008392.1.gff.proteome.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/NC_010528.1.gff.proteome.faa --output emapperOutput/NC_010528.1.gff.proteome.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/NC_010529.1.gff.proteome.faa --output emapperOutput/NC_010529.1.gff.proteome.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/NC_010530.1.gff.proteome.faa --output emapperOutput/NC_010530.1.gff.proteome.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/NC_010622.1.gff.proteome.faa --output emapperOutput/NC_010622.1.gff.proteome.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/NC_010623.1.gff.proteome.faa --output emapperOutput/NC_010623.1.gff.proteome.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/NC_010625.1.gff.proteome.faa --output emapperOutput/NC_010625.1.gff.proteome.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/NC_010627.1.gff.proteome.faa --output emapperOutput/NC_010627.1.gff.proteome.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/NC_010676.1.gff.proteome.faa --output emapperOutput/NC_010676.1.gff.proteome.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/NC_010679.1.gff.proteome.faa --output emapperOutput/NC_010679.1.gff.proteome.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/NC_010681.1.gff.proteome.faa --output emapperOutput/NC_010681.1.gff.proteome.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/NZ_CP009209.1.gff.proteome.faa --output emapperOutput/NZ_CP009209.1.gff.proteome.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/NZ_CP009210.1.gff.proteome.faa --output emapperOutput/NZ_CP009210.1.gff.proteome.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/NZ_CP010518.3.gff.proteome.faa --output emapperOutput/NZ_CP010518.3.gff.proteome.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/NZ_CP011568.3.gff.proteome.faa --output emapperOutput/NZ_CP011568.3.gff.proteome.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/NZ_CP015016.1.gff.proteome.faa --output emapperOutput/NZ_CP015016.1.gff.proteome.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/Pandoraea_allGenus_chromosome.fasta --output emapperOutput/Pandoraea_allGenus_chromosome.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/Paraburkholderia_allGenus_chromid.fasta --output emapperOutput/Paraburkholderia_allGenus_chromid.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/Paraburkholderia_allGenus_chromosome.fasta --output emapperOutput/Paraburkholderia_allGenus_chromosome.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/Paraburkholderia_wMega_chromid.fasta --output emapperOutput/Paraburkholderia_wMega_chromid.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/Paraburkholderia_wMega_chromosome.fasta --output emapperOutput/Paraburkholderia_wMega_chromosome.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/Paraburkholderia_wMega_megaplasmid.fasta --output emapperOutput/Paraburkholderia_wMega_megaplasmid.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/Paraburkholderia_woMega_chromid.fasta --output emapperOutput/Paraburkholderia_woMega_chromid.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/Paraburkholderia_woMega_chromosome.fasta --output emapperOutput/Paraburkholderia_woMega_chromosome.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/Polynucleobacter_allGenus_chromosome.fasta --output emapperOutput/Polynucleobacter_allGenus_chromosome.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/Ralstonia_allGenus_chromid.fasta --output emapperOutput/Ralstonia_allGenus_chromid.fasta -d bact --usemem --cpu 32
emapper.py -i Proteomes/Ralstonia_allGenus_chromosome.fasta --output emapperOutput/Ralstonia_allGenus_chromosome.fasta -d bact --usemem --cpu 32

# Analyze the eggnog-mapper output in relation to COG categories
perl Scripts/COGanalysis.pl 
cd Scripts/
matlab --nodesktop --nosplash -r compareCOG
cd .. 
