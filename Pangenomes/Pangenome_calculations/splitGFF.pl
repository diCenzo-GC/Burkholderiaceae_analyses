#!usr/bin/perl
use 5.010;

#  I will then open the correct gff file, print the corresponding accession information. But first, I need to modify the fasta files. Then add the appropriate fasta file to the end. Or, can I more easily just take it from the gbff?

# Read strains and accessions
$input = 'accessions.txt';
open($in, '<', $input);
while(<$in>) {
	chomp;
	@line = split("\t", $_);
	push(@strain, @line[0]);
	push(@accession, @line[1]);
}
close($in);

# Prepare replicon specific GFF files
foreach $i (@accession) {
	# Prepare input GFF file
	$fullGFF = 'fullGFFs/';
	$fullGFF .= @strain[0];
	$fullGFF .= '.gff';
	# Prepare input GBFF file
	$fullFNA = 'fullGFFs/';
	$fullFNA .= @strain[0];
	$fullFNA .= '.fna';
	# Prepare output file variable
	$outGFF = 'repliconGFFs/';
	$outGFF .= $i;
	$outGFF .= '.gff';
	open($out, '>', $outGFF);
	# Prepare the feature aspect of the GFF file
	open($inGFF, '<', $fullGFF);
	say $out ('##gff-version 3');
	while(<$inGFF>) {
		if(/$i/) {
			unless(/>$i/) {
				print $out ($_);
			}
		}
	}
	close($inGFF);
	# Prepare the sequence aspect of the GFF file
	open($inGBFF, '<', $fullFNA);
	say $out ('##FASTA');
	say $out (">$i");
	while(<$inGBFF>) {
		if(/>$i/../\/\//) {
			unless(/>$i/ or /\/\// or $_ eq "\n") {
				print $out ($_);
			}
		}

	}
	# Shift the strain array
	shift(@strain);
}

