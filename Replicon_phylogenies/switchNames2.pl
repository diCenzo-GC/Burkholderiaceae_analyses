#!/usr/bin/perl
use 5.010;

$genomes = 'intermediaryFiles/refseqGenomeInformation.txt'; # file to get the information of the files

open($gen,'<',$genomes);
while(<$gen>) {
	chomp;
	@line = split("\t",$_); # split the input line into an array based on commas
	push(@species,@line[1]); # make an array of the species names
}
close($gen);

foreach $species (@species) {
		$protein = $species;
		$species .= '.faa';
		$species2 = 'repliconProteomes/';
		$species2 .= $species;
		$output = 'ProteomesHMM/';
		$output .= $species;
		open($in, '<', $species2);
		open($out, '>', $output);
		while(<$in>) {
			if(/>/) {
				$total++;
				$total2 = "__$total";
				print $out (">$protein$total2\n");
			}
			else {
				print $out ($_);
			}
		}
		close($in);
		close($out);
		print("$species\n");
}
