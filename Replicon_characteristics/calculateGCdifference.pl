#!usr/bin/perl
use 5.010;

while(<>) {
	chomp;
	if(/Chromosome/) { # if chromosome, record GC content of chromosome and report no GC difference
		@lineA = split("\t", $_);
		$chromosome = @lineA[1];
		say('-');
	}
	else { # otherwise, calculate the GC content difference and print
		@lineB = split("\t", $_);
		$replicon = @lineB[1];
		$difference = $replicon - $chromosome;
		say("$difference");
	}
}
