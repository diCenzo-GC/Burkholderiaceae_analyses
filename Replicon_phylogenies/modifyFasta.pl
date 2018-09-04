#!usr/bin/perl
use 5.010;

while(<>) {
	if(/>/) {
		chomp;
		$_ =~ s/\[//g;
		$_ =~ s/\]//g;
		print("\n$_\t");
	}
	else {
		chomp;
		print("$_");
	}
}
