#!/usr/bin/perl
use File::Find;
use Cwd;
use 5.010;

# Set directory of the genomes
$parent = "/datadisk1/georged/Betaproteobacteria/betaGenomes/Genomes/";

# Set output file and open
$output = 'dinuc_freq.txt';
open($out,'>',$output);

# Set variables initially to 0
$total = 0;
$aa = 0;
$at = 0;
$ac = 0;
$ag = 0;
$ta = 0;
$tt = 0;
$tc = 0;
$tg = 0;
$ca = 0;
$ct = 0;
$cc = 0;
$cg = 0;
$ga = 0;
$gt = 0;
$gc = 0;
$gg = 0;
$i = "";
$j = "";

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
				$aa2 = ($aa / $total);
				$at2 = ($at / $total);
				$ac2 = ($ac / $total);
				$ag2 = ($ag / $total);
				$ta2 = ($ta / $total);
				$tt2 = ($tt / $total);
				$tc2 = ($tc / $total);
				$tg2 = ($tg / $total);
				$ca2 = ($ca / $total);
				$ct2 = ($ct / $total);
				$cc2 = ($cc / $total);
				$cg2 = ($cg / $total);
				$ga2 = ($ga / $total);
				$gt2 = ($gt / $total);
				$gc2 = ($gc / $total);
				$gg2 = ($gg / $total);
				say $out ("$accession\t$aa2\t$at2\t$ac2\t$ag2\t$ta2\t$tt2\t$tc2\t$tg2\t$ca2\t$ct2\t$cc2\t$cg2\t$ga2\t$gt2\t$gc2\t$gg2");
			}
			$total = 0;
			$aa = 0;
			$at = 0;
			$ac = 0;
			$ag = 0;
			$ta = 0;
			$tt = 0;
			$tc = 0;
			$tg = 0;
			$ca = 0;
			$ct = 0;
			$cc = 0;
			$cg = 0;
			$ga = 0;
			$gt = 0;
			$gc = 0;
			$gg = 0;
			@accession = split(' ', $_);
			$accession = @accession[0];
			$accession =~ s/>//;
		}
		else { # Otherwise, count the number of nucleotides and the number of each nucleotide
			chomp;
			@line = split('',$_);
			foreach $i (@line) {
				if($i eq "A") {
					if($j eq "A") {
						$aa++;
						$total++;
					}
					if($j eq "T") {
						$at++;
						$total++;
					}
					if($j eq "G") {
						$ag++;
						$total++;
					}
					if($j eq "C") {
						$ac++;
						$total++;
					}
				}
				if($i eq "T") {
					if($j eq "A") {
						$ta++;
						$total++;
					}
					if($j eq "T") {
						$tt++;
						$total++;
					}
					if($j eq "G") {
						$tg++;
						$total++;
					}
					if($j eq "C") {
						$tc++;
						$total++;
					}
				}
				if($i eq "C") {
					if($j eq "A") {
						$ca++;
						$total++;
					}
					if($j eq "T") {
						$ct++;
						$total++;
					}
					if($j eq "G") {
						$cg++;
						$total++;
					}
					if($j eq "C") {
						$cc++;
						$total++;
					}
				}
				if($i eq "G") {
					if($j eq "A") {
						$ga++;
						$total++;
					}
					if($j eq "T") {
						$gt++;
						$total++;
					}
					if($j eq "G") {
						$gg++;
						$total++;
					}
					if($j eq "C") {
						$gc++;
						$total++;
					}
				}
				$j = $i;
			}
		}
	}
	# For the last replicon of the file, calculate and print statistics
	$aa2 = ($aa / $total);
	$at2 = ($at / $total);
	$ac2 = ($ac / $total);
	$ag2 = ($ag / $total);
	$ta2 = ($ta / $total);
	$tt2 = ($tt / $total);
	$tc2 = ($tc / $total);
	$tg2 = ($tg / $total);
	$ca2 = ($ca / $total);
	$ct2 = ($ct / $total);
	$cc2 = ($cc / $total);
	$cg2 = ($cg / $total);
	$ga2 = ($ga / $total);
	$gt2 = ($gt / $total);
	$gc2 = ($gc / $total);
	$gg2 = ($gg / $total);
	say $out ("$accession\t$aa2\t$at2\t$ac2\t$ag2\t$ta2\t$tt2\t$tc2\t$tg2\t$ca2\t$ct2\t$cc2\t$cg2\t$ga2\t$gt2\t$gc2\t$gg2");
}

# Close output
close($out);
