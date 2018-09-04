# Prepare directories
mkdir blastDatabases/
mkdir blastOutput/
mkdir bestHitPairs/
mkdir nucleotideFasta/
mkdir proteinFasta/
mkdir temp/
mkdir finalCount/

## Run analysis for Burkholderia versus Paraburkholderia

# Prepare protein fasta files
mv Burkholderia_genus_A_pangenome.fna nucleotideFasta/
mv Paraburkholderia_genus_A_pangenome.fna nucleotideFasta/
transeq -sequence nucleotideFasta/Burkholderia_genus_A_pangenome.fna -outseq proteinFasta/Burkholderia_genus_A_pangenome.faa -frame 1 -table 0
transeq -sequence nucleotideFasta/Paraburkholderia_genus_A_pangenome.fna -outseq proteinFasta/Paraburkholderia_genus_A_pangenome.faa -frame 1 -table 0

# Make blast databases
makeblastdb -in proteinFasta/Burkholderia_genus_A_pangenome.faa -out blastDatabases/Burkholderia_genus_A -title Burkholderia_genus_A -dbtype 'prot'
makeblastdb -in proteinFasta/Paraburkholderia_genus_A_pangenome.faa -out blastDatabases/Paraburkholderia_genus_A -title Paraburkholderia_genus_A -dbtype 'prot'

# Run the blast analyses
blastp -query proteinFasta/Burkholderia_genus_A_pangenome.faa -db blastDatabases/Paraburkholderia_genus_A -out blastOutput/Burkholderia_v_Paraburkholderia.txt -outfmt '6 qseqid sseqid pident length mismatch gapopen qlen qstart qend slen sstart send bitscore evalue sstrand' -culling_limit 1 -max_target_seqs 1 -max_hsps 1 -num_threads 32
blastp -query proteinFasta/Paraburkholderia_genus_A_pangenome.faa -db blastDatabases/Burkholderia_genus_A -out blastOutput/Paraburkholderia_v_Burkholderia.txt -outfmt '6 qseqid sseqid pident length mismatch gapopen qlen qstart qend slen sstart send bitscore evalue sstrand' -culling_limit 1 -max_target_seqs 1 -max_hsps 1 -num_threads 32

# Find the best hits
cut -f 1,2 blastOutput/Burkholderia_v_Paraburkholderia.txt > temp/Burkholderia_v_Paraburkholderia.txt
cut -f 2 blastOutput/Paraburkholderia_v_Burkholderia.txt > temp/temp1.txt
cut -f 1 blastOutput/Paraburkholderia_v_Burkholderia.txt > temp/temp2.txt
paste temp/temp1.txt temp/temp2.txt > temp/Paraburkholderia_v_Burkholderia.txt
grep -f 'temp/Burkholderia_v_Paraburkholderia.txt' temp/Paraburkholderia_v_Burkholderia.txt > bestHitPairs/Burkholderia_v_Paraburkholderia.txt
rm temp/*

# Count number of pairs belonging to core genome
cut -f 1 bestHitPairs/Burkholderia_v_Paraburkholderia.txt > temp/temp1.txt
sed -i 's/_/PLACEHOLDER/' temp/temp1.txt
sed -i 's/_1//' temp/temp1.txt
sed -i 's/PLACEHOLDER/_/' temp/temp1.txt
awk -F "\",\"" '$4>=199 {print $line}' ../Roary/Chromid/Burkholderia_genus_A/gene_presence_absence.csv > temp/temp2.txt
grep -o -f 'temp/temp1.txt' temp/temp2.txt > temp/temp3.txt
cut -f 2 bestHitPairs/Burkholderia_v_Paraburkholderia.txt > temp/tempA.txt
sed -i 's/_/PLACEHOLDER/' temp/tempA.txt
sed -i 's/_1//' temp/tempA.txt
sed -i 's/PLACEHOLDER/_/' temp/tempA.txt
awk -F "\",\"" '$4>=21 {print $line}' ../Roary/Chromid/Paraburkholderia_genus_A/gene_presence_absence.csv > temp/tempB.txt
grep -o -f 'temp/tempA.txt' temp/tempB.txt > temp/tempC.txt
grep -f 'temp/tempC.txt' bestHitPairs/Burkholderia_v_Paraburkholderia.txt > temp/tempD.txt
sed -i 's/_/PLACEHOLDER/' temp/tempD.txt
sed -i 's/_1//' temp/tempD.txt
sed -i 's/PLACEHOLDER/_/' temp/tempD.txt
cut -f 1 temp/tempD.txt > temp/tempE.txt
grep -f 'temp/temp3.txt' temp/tempE.txt > finalCount/Burkholderia_v_Paraburkholderia.txt
rm temp/*

# Count number of pairs belonging to the soft core genome
cut -f 1 bestHitPairs/Burkholderia_v_Paraburkholderia.txt > temp/temp1.txt
sed -i 's/_/PLACEHOLDER/' temp/temp1.txt
sed -i 's/_1//' temp/temp1.txt
sed -i 's/PLACEHOLDER/_/' temp/temp1.txt
awk -F "\",\"" '$4>=191 {print $line}' ../Roary/Chromid/Burkholderia_genus_A/gene_presence_absence.csv > temp/temp2.txt
grep -o -f 'temp/temp1.txt' temp/temp2.txt > temp/temp3.txt
cut -f 2 bestHitPairs/Burkholderia_v_Paraburkholderia.txt > temp/tempA.txt
sed -i 's/_/PLACEHOLDER/' temp/tempA.txt
sed -i 's/_1//' temp/tempA.txt
sed -i 's/PLACEHOLDER/_/' temp/tempA.txt
awk -F "\",\"" '$4>=20 {print $line}' ../Roary/Chromid/Paraburkholderia_genus_A/gene_presence_absence.csv > temp/tempB.txt
grep -o -f 'temp/tempA.txt' temp/tempB.txt > temp/tempC.txt
grep -f 'temp/tempC.txt' bestHitPairs/Burkholderia_v_Paraburkholderia.txt > temp/tempD.txt
sed -i 's/_/PLACEHOLDER/' temp/tempD.txt
sed -i 's/_1//' temp/tempD.txt
sed -i 's/PLACEHOLDER/_/' temp/tempD.txt
cut -f 1 temp/tempD.txt > temp/tempE.txt
grep -f 'temp/temp3.txt' temp/tempE.txt > finalCount/Burkholderia_v_Paraburkholderia_B.txt
rm temp/*

## Run analysis for Ralstonia versus Cupriavidus

# Prepare protein fasta files
mv Ralstonia_genus_pangenome.fna nucleotideFasta/
mv Cupriavidus_genus_pangenome.fna nucleotideFasta/
transeq -sequence nucleotideFasta/Ralstonia_genus_pangenome.fna -outseq proteinFasta/Ralstonia_genus_pangenome.faa -frame 1 -table 0
transeq -sequence nucleotideFasta/Cupriavidus_genus_pangenome.fna -outseq proteinFasta/Cupriavidus_genus_pangenome.faa -frame 1 -table 0

# Make blast databases
makeblastdb -in proteinFasta/Ralstonia_genus_pangenome.faa -out blastDatabases/Ralstonia_genus -title Ralstonia_genus -dbtype 'prot'
makeblastdb -in proteinFasta/Cupriavidus_genus_pangenome.faa -out blastDatabases/Cupriavidus_genus -title Cupriavidus_genus -dbtype 'prot'

# Run the blast analyses
blastp -query proteinFasta/Ralstonia_genus_pangenome.faa -db blastDatabases/Cupriavidus_genus -out blastOutput/Ralstonia_v_Cupriavidus.txt -outfmt '6 qseqid sseqid pident length mismatch gapopen qlen qstart qend slen sstart send bitscore evalue sstrand' -culling_limit 1 -max_target_seqs 1 -max_hsps 1 -num_threads 32
blastp -query proteinFasta/Cupriavidus_genus_pangenome.faa -db blastDatabases/Ralstonia_genus -out blastOutput/Cupriavidus_v_Ralstonia.txt -outfmt '6 qseqid sseqid pident length mismatch gapopen qlen qstart qend slen sstart send bitscore evalue sstrand' -culling_limit 1 -max_target_seqs 1 -max_hsps 1 -num_threads 32

# Find the best hits
cut -f 1,2 blastOutput/Ralstonia_v_Cupriavidus.txt > temp/Ralstonia_v_Cupriavidus.txt
cut -f 2 blastOutput/Cupriavidus_v_Ralstonia.txt > temp/temp1.txt
cut -f 1 blastOutput/Cupriavidus_v_Ralstonia.txt > temp/temp2.txt
paste temp/temp1.txt temp/temp2.txt > temp/Cupriavidus_v_Ralstonia.txt
grep -f 'temp/Ralstonia_v_Cupriavidus.txt' temp/Cupriavidus_v_Ralstonia.txt > bestHitPairs/Ralstonia_v_Cupriavidus.txt
rm temp/*

# Count number of pairs belonging to core genome
cut -f 1 bestHitPairs/Ralstonia_v_Cupriavidus.txt > temp/temp1.txt
sed -i 's/_/PLACEHOLDER/' temp/temp1.txt
sed -i 's/_1//' temp/temp1.txt
sed -i 's/PLACEHOLDER/_/' temp/temp1.txt
awk -F "\",\"" '$4>=26 {print $line}' ../Roary/Chromid/Ralstonia_genus/gene_presence_absence.csv > temp/temp2.txt
grep -o -f 'temp/temp1.txt' temp/temp2.txt > temp/temp3.txt
cut -f 2 bestHitPairs/Ralstonia_v_Cupriavidus.txt > temp/tempA.txt
sed -i 's/_/PLACEHOLDER/' temp/tempA.txt
sed -i 's/_1//' temp/tempA.txt
sed -i 's/PLACEHOLDER/_/' temp/tempA.txt
awk -F "\",\"" '$4>=13 {print $line}' ../Roary/Chromid/Cupriavidus_genus/gene_presence_absence.csv > temp/tempB.txt
grep -o -f 'temp/tempA.txt' temp/tempB.txt > temp/tempC.txt
grep -f 'temp/tempC.txt' bestHitPairs/Ralstonia_v_Cupriavidus.txt > temp/tempD.txt
sed -i 's/_/PLACEHOLDER/' temp/tempD.txt
sed -i 's/_1//' temp/tempD.txt
sed -i 's/PLACEHOLDER/_/' temp/tempD.txt
cut -f 1 temp/tempD.txt > temp/tempE.txt
grep -f 'temp/temp3.txt' temp/tempE.txt > finalCount/Ralstonia_v_Cupriavidus.txt
rm temp/*

# Count number of pairs belonging to the soft core genome
cut -f 1 bestHitPairs/Ralstonia_v_Cupriavidus.txt > temp/temp1.txt
sed -i 's/_/PLACEHOLDER/' temp/temp1.txt
sed -i 's/_1//' temp/temp1.txt
sed -i 's/PLACEHOLDER/_/' temp/temp1.txt
awk -F "\",\"" '$4>=25 {print $line}' ../Roary/Chromid/Ralstonia_genus/gene_presence_absence.csv > temp/temp2.txt
grep -o -f 'temp/temp1.txt' temp/temp2.txt > temp/temp3.txt
cut -f 2 bestHitPairs/Ralstonia_v_Cupriavidus.txt > temp/tempA.txt
sed -i 's/_/PLACEHOLDER/' temp/tempA.txt
sed -i 's/_1//' temp/tempA.txt
sed -i 's/PLACEHOLDER/_/' temp/tempA.txt
awk -F "\",\"" '$4>=13 {print $line}' ../Roary/Chromid/Cupriavidus_genus/gene_presence_absence.csv > temp/tempB.txt
grep -o -f 'temp/tempA.txt' temp/tempB.txt > temp/tempC.txt
grep -f 'temp/tempC.txt' bestHitPairs/Ralstonia_v_Cupriavidus.txt > temp/tempD.txt
sed -i 's/_/PLACEHOLDER/' temp/tempD.txt
sed -i 's/_1//' temp/tempD.txt
sed -i 's/PLACEHOLDER/_/' temp/tempD.txt
cut -f 1 temp/tempD.txt > temp/tempE.txt
grep -f 'temp/temp3.txt' temp/tempE.txt > finalCount/Ralstonia_v_Cupriavidus_B.txt
rm temp/*










