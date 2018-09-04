#!usr/bin/perl
use 5.010;

# set variables
$proteome = 'intermediaryFiles/combined_proteomes.faa'; # the proteome file
$markerscanner = 'Scripts/MarkerScanner.pl'; # location of MarkerScanner script
$output = 'Scripts/MarkerScannerNumber.pl'; # location of MarkerScanner final script
$total = 0; # set count total to 0

# count number of proteins
open($prot,'<',$proteome);
while(<$prot>) {
	if(/>/) {
		$total++; # for every fasta header, add one to the total.  The final number is the total number of proteins in the file
	}
}
close($prot);

# update the number of proteins in the MarkerScanner script
open($marker,'<', $markerscanner);
open($out, '>', $output);
while(<$marker>) {
	if(/XXXXXXXXXX/) {
		$_ =~ s/XXXXXXXXXX/$total/; # replace the place holder with the number of proteins
		print $out ($_); # print to a new file
	}
	else {
		print $out ($_); # print to a new file
	}
}
close($marker);
close($out);
