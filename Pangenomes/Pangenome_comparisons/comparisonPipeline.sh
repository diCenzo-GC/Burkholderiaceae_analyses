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

