# Make directories
mkdir nucleotidePangenomes/
mkdir nucleotidePangenomes/AccessoryList/
mkdir Proteomes/
mkdir emapperOutput/
mkdir COG_categories/

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

# Get the eggnog-mapper output for relevant genes
grep -f 'nucleotidePangenomes/AccessoryList/Burkholderia_allGenus_chromosome.txt'  ../pangenome95/emapperOutput/Burkholderia_allGenus_chromosome.fasta.emapper.annotations  > emapperOutput/Burkholderia_allGenus_chromosome.fasta.emapper.annotations &
grep -f 'nucleotidePangenomes/AccessoryList/Burkholderia_allGenus_chromid.txt' ../pangenome95/emapperOutput/Burkholderia_allGenus_chromid.fasta.emapper.annotations > emapperOutput/Burkholderia_allGenus_chromid.fasta.emapper.annotations &
grep -f 'nucleotidePangenomes/AccessoryList/Burkholderia_BCC_chromosome.txt' ../pangenome95/emapperOutput/Burkholderia_BCC_chromosome.fasta.emapper.annotations > emapperOutput/Burkholderia_BCC_chromosome.fasta.emapper.annotations &
grep -f 'nucleotidePangenomes/AccessoryList/Burkholderia_BCC_chromid.txt' ../pangenome95/emapperOutput/Burkholderia_BCC_chromid.fasta.emapper.annotations > emapperOutput/Burkholderia_BCC_chromid.fasta.emapper.annotations &
grep -f 'nucleotidePangenomes/AccessoryList/Burkholderia_BCC_megaplasmid.txt' ../pangenome95/emapperOutput/Burkholderia_BCC_megaplasmid.fasta.emapper.annotations > emapperOutput/Burkholderia_BCC_megaplasmid.fasta.emapper.annotations &
grep -f 'nucleotidePangenomes/AccessoryList/Burkholderia_nonBCC_chromosome.txt' ../pangenome95/emapperOutput/Burkholderia_nonBCC_chromosome.fasta.emapper.annotations > emapperOutput/Burkholderia_nonBCC_chromosome.fasta.emapper.annotations &
grep -f 'nucleotidePangenomes/AccessoryList/Burkholderia_nonBCC_chromid.txt' ../pangenome95/emapperOutput/Burkholderia_nonBCC_chromid.fasta.emapper.annotations > emapperOutput/Burkholderia_nonBCC_chromid.fasta.emapper.annotations &
grep -f 'nucleotidePangenomes/AccessoryList/Paraburkholderia_allGenus_chromosome.txt' ../pangenome95/emapperOutput/Paraburkholderia_allGenus_chromosome.fasta.emapper.annotations > emapperOutput/Paraburkholderia_allGenus_chromosome.fasta.emapper.annotations &
grep -f 'nucleotidePangenomes/AccessoryList/Paraburkholderia_allGenus_chromid.txt' ../pangenome95/emapperOutput/Paraburkholderia_allGenus_chromid.fasta.emapper.annotations > emapperOutput/Paraburkholderia_allGenus_chromid.fasta.emapper.annotations &
grep -f 'nucleotidePangenomes/AccessoryList/Paraburkholderia_woMega_chromosome.txt' ../pangenome95/emapperOutput/Paraburkholderia_woMega_chromosome.fasta.emapper.annotations > emapperOutput/Paraburkholderia_woMega_chromosome.fasta.emapper.annotations &
grep -f 'nucleotidePangenomes/AccessoryList/Paraburkholderia_woMega_chromid.txt' ../pangenome95/emapperOutput/Paraburkholderia_woMega_chromid.fasta.emapper.annotations > emapperOutput/Paraburkholderia_woMega_chromid.fasta.emapper.annotations &
grep -f 'nucleotidePangenomes/AccessoryList/Paraburkholderia_wMega_chromosome.txt' ../pangenome95/emapperOutput/Paraburkholderia_wMega_chromosome.fasta.emapper.annotations > emapperOutput/Paraburkholderia_wMega_chromosome.fasta.emapper.annotations &
grep -f 'nucleotidePangenomes/AccessoryList/Paraburkholderia_wMega_chromid.txt' ../pangenome95/emapperOutput/Paraburkholderia_wMega_chromid.fasta.emapper.annotations > emapperOutput/Paraburkholderia_wMega_chromid.fasta.emapper.annotations &
grep -f 'nucleotidePangenomes/AccessoryList/Paraburkholderia_wMega_megaplasmid.txt' ../pangenome95/emapperOutput/Paraburkholderia_wMega_megaplasmid.fasta.emapper.annotations > emapperOutput/Paraburkholderia_wMega_megaplasmid.fasta.emapper.annotations &
grep -f 'nucleotidePangenomes/AccessoryList/Cupriavidus_allGenus_chromosome.txt' ../pangenome95/emapperOutput/Cupriavidus_allGenus_chromosome.fasta.emapper.annotations > emapperOutput/Cupriavidus_allGenus_chromosome.fasta.emapper.annotations &
grep -f 'nucleotidePangenomes/AccessoryList/Cupriavidus_allGenus_chromid.txt' ../pangenome95/emapperOutput/Cupriavidus_allGenus_chromid.fasta.emapper.annotations > emapperOutput/Cupriavidus_allGenus_chromid.fasta.emapper.annotations &
grep -f 'nucleotidePangenomes/AccessoryList/Ralstonia_allGenus_chromosome.txt' ../pangenome95/emapperOutput/Ralstonia_allGenus_chromosome.fasta.emapper.annotations > emapperOutput/Ralstonia_allGenus_chromosome.fasta.emapper.annotations &
grep -f 'nucleotidePangenomes/AccessoryList/Ralstonia_allGenus_chromid.txt' ../pangenome95/emapperOutput/Ralstonia_allGenus_chromid.fasta.emapper.annotations > emapperOutput/Ralstonia_allGenus_chromid.fasta.emapper.annotations &
grep -f 'nucleotidePangenomes/AccessoryList/Pandoraea_allGenus_chromosome.txt' ../pangenome95/emapperOutput/Pandoraea_allGenus_chromosome.fasta.emapper.annotations > emapperOutput/Pandoraea_allGenus_chromosome.fasta.emapper.annotations &
grep -f 'nucleotidePangenomes/AccessoryList/Polynucleobacter_allGenus_chromosome.txt' ../pangenome95/emapperOutput/Polynucleobacter_allGenus_chromosome.fasta.emapper.annotations > emapperOutput/Polynucleobacter_allGenus_chromosome.fasta.emapper.annotations &

# Get the proteome headers for relevant genes
grep -f 'nucleotidePangenomes/AccessoryList/Burkholderia_allGenus_chromosome.txt'   ../pangenome95/Proteomes/Burkholderia_allGenus_chromosome.fasta  > Proteomes/Burkholderia_allGenus_chromosome.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Burkholderia_allGenus_chromid.txt'  ../pangenome95/Proteomes/Burkholderia_allGenus_chromid.fasta > Proteomes/Burkholderia_allGenus_chromid.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Burkholderia_BCC_chromosome.txt'  ../pangenome95/Proteomes/Burkholderia_BCC_chromosome.fasta > Proteomes/Burkholderia_BCC_chromosome.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Burkholderia_BCC_chromid.txt'  ../pangenome95/Proteomes/Burkholderia_BCC_chromid.fasta > Proteomes/Burkholderia_BCC_chromid.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Burkholderia_BCC_megaplasmid.txt'  ../pangenome95/Proteomes/Burkholderia_BCC_megaplasmid.fasta > Proteomes/Burkholderia_BCC_megaplasmid.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Burkholderia_nonBCC_chromosome.txt'  ../pangenome95/Proteomes/Burkholderia_nonBCC_chromosome.fasta > Proteomes/Burkholderia_nonBCC_chromosome.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Burkholderia_nonBCC_chromid.txt'  ../pangenome95/Proteomes/Burkholderia_nonBCC_chromid.fasta > Proteomes/Burkholderia_nonBCC_chromid.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Paraburkholderia_allGenus_chromosome.txt'  ../pangenome95/Proteomes/Paraburkholderia_allGenus_chromosome.fasta > Proteomes/Paraburkholderia_allGenus_chromosome.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Paraburkholderia_allGenus_chromid.txt'  ../pangenome95/Proteomes/Paraburkholderia_allGenus_chromid.fasta > Proteomes/Paraburkholderia_allGenus_chromid.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Paraburkholderia_woMega_chromosome.txt'  ../pangenome95/Proteomes/Paraburkholderia_woMega_chromosome.fasta > Proteomes/Paraburkholderia_woMega_chromosome.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Paraburkholderia_woMega_chromid.txt'  ../pangenome95/Proteomes/Paraburkholderia_woMega_chromid.fasta > Proteomes/Paraburkholderia_woMega_chromid.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Paraburkholderia_wMega_chromosome.txt'  ../pangenome95/Proteomes/Paraburkholderia_wMega_chromosome.fasta > Proteomes/Paraburkholderia_wMega_chromosome.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Paraburkholderia_wMega_chromid.txt'  ../pangenome95/Proteomes/Paraburkholderia_wMega_chromid.fasta > Proteomes/Paraburkholderia_wMega_chromid.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Paraburkholderia_wMega_megaplasmid.txt'  ../pangenome95/Proteomes/Paraburkholderia_wMega_megaplasmid.fasta > Proteomes/Paraburkholderia_wMega_megaplasmid.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Cupriavidus_allGenus_chromosome.txt'  ../pangenome95/Proteomes/Cupriavidus_allGenus_chromosome.fasta > Proteomes/Cupriavidus_allGenus_chromosome.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Cupriavidus_allGenus_chromid.txt'  ../pangenome95/Proteomes/Cupriavidus_allGenus_chromid.fasta > Proteomes/Cupriavidus_allGenus_chromid.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Ralstonia_allGenus_chromosome.txt'  ../pangenome95/Proteomes/Ralstonia_allGenus_chromosome.fasta > Proteomes/Ralstonia_allGenus_chromosome.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Ralstonia_allGenus_chromid.txt'  ../pangenome95/Proteomes/Ralstonia_allGenus_chromid.fasta > Proteomes/Ralstonia_allGenus_chromid.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Pandoraea_allGenus_chromosome.txt'  ../pangenome95/Proteomes/Pandoraea_allGenus_chromosome.fasta > Proteomes/Pandoraea_allGenus_chromosome.fasta &
grep -f 'nucleotidePangenomes/AccessoryList/Polynucleobacter_allGenus_chromosome.txt'  ../pangenome95/Proteomes/Polynucleobacter_allGenus_chromosome.fasta > Proteomes/Polynucleobacter_allGenus_chromosome.fasta &
wait

# Analyze the COG data
perl Scripts/COGanalysis.pl  
cd Scripts/
matlab --nodesktop --nosplash -r compareCOG
cd .. 
