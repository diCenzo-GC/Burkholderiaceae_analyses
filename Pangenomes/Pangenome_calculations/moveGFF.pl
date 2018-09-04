#!usr/bin/perl
use 5.010;

$strains = 'strains.txt';

open($genomes, '<', $strains);
while(<$genomes>) {
	chomp;
	$path = "prokka/$_/$_.gff";
	$path2 = "fullGFFs/$_.gff";
	system("cp $path $path2 ");
	$path = "prokka/$_/$_.fna";
	$path2 = "fullGFFs/$_.fna";
	open($in, '<', $path);
	open($out, '>', $path2);
	while(<$in>) {
		if(/>/) {
			print $out ("\/\/\n$_");
		}
		else {
			print $out ($_);
		}
	}
	print $out ("\n\/\/");
	close($in);
	close($out);
}
close($genomes);
