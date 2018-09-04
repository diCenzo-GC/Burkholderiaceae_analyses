#!usr/bin/perl
use File::Find;
use Cwd;
use 5.010;

# set variables
$species_list = 'intermediaryFiles/refseqGenomeInformation.txt';
$pwd = cwd();
$total = 0;
$count = 0;

# count number of species that were examined
open($forCount,'<',$species_list);
while(<$forCount>) {
	chomp;
	$total++; # for each line in the original list of species, add one to the total.  Final number is the total number of species.
}
close($forCount);

# script for iteratively working through each output file from MarkerScanner
$parent = "$pwd/MarkerScannerOutput"; # directory with the MarkerScanner
find( \&search_all_folder, $parent ); # prepare a list of the files
sub search_all_folder { # prepare a list of the files
	chomp $_;
	return if $_ eq '.' or $_ eq '..';
	&read_files ($_) if (-f);
}

# identify only marker proteins present in a sufficiently large percentage of the genomes
sub read_files {
	my ($filename) = @_;
	open my $fh, '<', $filename;
	$locus = substr($filename,0,-4);
	while(<$fh>) {
		if(/>/) {
			$count++; # count the number of proteins
		}
	}
	close($fh);
	if($count / $total >= 0.95) {
		system("mv $pwd/MarkerScannerOutput/$filename $pwd/MarkerScannerCounted/");
	}
	$count = "0";
}
