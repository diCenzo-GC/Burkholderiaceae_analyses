#!/usr/bin/perl
use File::Find;
use Cwd;
use 5.010;

# Set directory of the genomes
$parent = "/datadisk1/georged/Betaproteobacteria/betaGenomes/Genomes/";

# Set output file and open
$output = 'size_gc.txt';
open($out,'>',$output);

# Set variables initially to 0
$total = 0;
$G = 0;
$C = 0;
$A = 0;
$T = 0;

# Print a header
say $out ("Accession\tTotal\tG_num\tC_num\tA_num\tT_num\tG_per\tC_per\tA_per\tT_per");

# Start loop to repeat for all files
find( \&search_all_folder, $parent );

# Loop to repeat for all files
sub search_all_folder {
	chomp $_;
	return if $_ eq '.' or $_ eq '..';
	&read_files ($_) if (-f);
}

# Do this for each file
sub read_files {
	my ($filename) = @_;
	open my $fh, '<', $filename;
	while(<$fh>) {
		if(/>/) { # When there is a new replicon, calculate and print statistics for previous replicon, then get accession of new replicon
			unless($total == 0) {
				$Gper = 100 * $G / $total;
				$Cper = 100 * $C / $total;
				$Aper = 100 * $A / $total;
				$Tper = 100 * $T / $total;
				say $out ("$accession\t$total\t$G\t$C\t$A\t$T\t$Gper\t$Cper\t$Aper\t$Tper");
			}
			$total = 0;
			$G = 0;
			$C = 0;
			$A = 0;
			$T = 0;
			@accession = split(' ', $_);
			$accession = @accession[0];
			$accession =~ s/>//;
		}
		else { # Otherwise, count the number of nucleotides and the number of each nucleotide
			chomp;
			@line = split('',$_);
			foreach $i (@line) {
				$total++;
				if($i eq G) {
					$G++;
				}
				if($i eq C) {
					$C++;
				}
				if($i eq A) {
					$A++;
				}
				if($i eq T) {
					$T++;
				}
			}
		}
	}
	# For the last replicon of the file, calculate and print statistics
	$Gper = 100 * $G / $total;
	$Cper = 100 * $C / $total;
	$Aper = 100 * $A / $total;
	$Tper = 100 * $T / $total;
	say $out ("$accession\t$total\t$G\t$C\t$A\t$T\t$Gper\t$Cper\t$Aper\t$Tper");
}

# Close output
close($out);
