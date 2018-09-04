cat /datadisk1/georged/Betaproteobacteria/betaGenomes/FeatureTables/*.txt > combinedFeatureTables.txt
cut -f 3,5,7 combinedFeatureTables.txt > allAccessions.txt
sort allAccessions.txt > sortedAccessions.txt
uniq sortedAccessions.txt > uniqueAccessions.txt
