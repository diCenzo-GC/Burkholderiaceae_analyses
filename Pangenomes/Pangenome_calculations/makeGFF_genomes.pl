#!usr/bin/perl
use 5.010;

$strains = 'strains.txt';

open($genomes, '<', $strains);
while(<$genomes>) {
	chomp;
	$path = '/datadisk1/georged/Betaproteobacteria/betaGenomes/Genomes/';
	$path .= $_;
	$path .= '.fna';
	system("prokka --outdir prokka/$_ --prefix $_ --fast --norrna --notrna $path");
}
close($genomes);
