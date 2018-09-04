#!usr/bin/perl
use 5.010;

# set variables
$HMM_list = 'intermediaryFiles/hmm_list.txt';

# make an array of the HMM names
open($HMM,'<',$HMM_list);
while(<$HMM>) {
	chomp;
	push(@HMMs,$_);
}
close($HMM);

# Perform the HMMscans
foreach $i (@HMMs) {
	system("hmmscan hmmDatabaseFiles/converted_combined.hmm HMMsearchHits/$i.faa > HMMscan/$i.txt");
	system("perl Scripts/parseHMMscan.pl HMMscan/$i.txt > HMMscanParsed/$i.csv");
	system("perl Scripts/HMMscanTopHit.pl HMMscanParsed/$i.csv > HMMscanTop/$i.csv");
}
