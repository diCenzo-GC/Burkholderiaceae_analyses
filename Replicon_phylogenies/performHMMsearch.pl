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

# Perform the HMMsearches
foreach $i (@HMMs) {
	system("hmmbuild HMM_files/$i.hmm HMM_files/$i.txt"); # build the HMM profiles
	system("hmmsearch HMM_files/$i.hmm intermediaryFiles/combined_proteomes_HMM.faa > HMMsearch/$i.txt"); # do the hmmsearch
	system("perl Scripts/parseHMMsearch.pl HMMsearch/$i.txt > HMMsearchParsed/$i.txt"); # parse the hmmsearch output
	system("perl Scripts/extractHMMsearchHits.pl HMMsearchParsed/$i.txt > HMMsearchHits/$i.faa"); # extract the hmmsearch hits
}


