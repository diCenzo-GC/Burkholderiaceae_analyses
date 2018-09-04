#!usr/bin/perl
use 5.010;

# Input files
$strainList = 'strains.txt';
$fastANI = 'fastANI_output_reformatted.txt';

# Prepare array of strains
open($list, '<', $strainList);
while(<$list>) {
	chomp;
	push(@strains, $_);
}
close($list);

# Print header row
print("Strain");
foreach $a (@strains) {
	print("\t$a");
}
print("\n");

# Prepare matrix
$data = 0;
foreach $i (@strains) {
	print("$i");
	foreach $j (@strains) {
		open($ANI, '<', $fastANI);
		while(<$ANI>) {
			@line = split("\t", $_);
			if(@line[0] eq $i) {
				if(@line[1] eq $j) {
					$data = @line[2];
				}
			}
		}
		close($ANI);
		print("\t$data");
		$data = 0;
	}
	print("\n");
}
