sh getAccessions.sh
perl getSizeGC.pl
# Manually parsed output in Excel and prepared the input for the next script
perl calculatedGCdifference.pl GCvalues.txt > GCdifferences.txt
grep -r 'LOCUS' /datadisk1/georged/Betaproteobacteria/betaGenomes/Genbank/ > greppedLocus.txt
grep -r 'VERSION' /datadisk1/georged/Betaproteobacteria/betaGenomes/Genbank/ > greppedVersion.txt
# Manually parsed output of above files in Excel
perl getDiNucleotideFreq.pl
# Manually parsed the output of the above script and prepared the input for the next script
perl calculateDiNucRelative.pl dinuc_gc_freq.txt > dinucRelative.txt
