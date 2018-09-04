#!usr/bin/perl
use 5.010;

$strains = 'strains.txt';

open($genomes, '<', $strains);
while(<$genomes>) {
	chomp;
	$path = "../../pangenome/prokka/$_/$_.faa.gz";
	$path2 = "Proteomes/$_.faa.gz";
	system("cp $path $path2 ");
}
close($genomes);
