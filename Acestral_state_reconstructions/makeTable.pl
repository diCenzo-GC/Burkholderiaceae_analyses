#!usr/bin/perl
use 5.010;

# Input files
$strainList = 'strains.txt';
$cdhitOutput = 'cdhit_clustering/modifiedOutput.txt';

# Get list of strains
open($strainsIn, '<', $strainList);
while(<$strainsIn>) {
	chomp;
	push(@strains, $_);
}
close($strainsIn);

# Print the header row
foreach $i (@strains) {
	print("\t$i");
}

# Make the count table
open($cdhit, '<', $cdhitOutput);
while(<$cdhit>) {
	if(/>Cluster/) {
		@line = split("\t", $_);
		@line[0] =~ s/>//;
		@line[0] =~ s/\ /_/;
		print("\n@line[0]");
		foreach $i (@strains) {
			if(/$i/) {
				print("\t1");
			}
			else {
				print("\t0");
			}
		}
	}
}
