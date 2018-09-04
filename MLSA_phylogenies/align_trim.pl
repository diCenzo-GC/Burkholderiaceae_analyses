#!usr/bin/perl
use File::Find;
use 5.010;
use Cwd;

system("PATH=$PATH:/home/georged/betaproteobacteria/trimAl/source");

$pwd = cwd();
$parent = "$pwd/MarkerScannerGood";
$output1 = "$pwd/Mafft";
$output2 = "$pwd/TrimAl";

find( \&search_all_folder, $parent );		

sub search_all_folder {
	chomp $_;
	return if $_ eq '.' or $_ eq '..';
	&read_files ($_) if (-f);
}

sub read_files {
	($filename) = @_;
	$filename2 = substr($filename,0,-4);
	$filename3 = $filename2;
	$filename2 .= '_mafft.fasta';
	$filename3 .= '_trimal.fasta';
	system("mafft --localpair --thread 40 $parent/$filename > $output1/$filename2");
	system("trimal -in $output1/$filename2 -out $output2/$filename3 -fasta -automated1");
}
