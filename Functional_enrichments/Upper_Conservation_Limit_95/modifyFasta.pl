#!usr/bin/perl
use 5.010;

while(<>) {
	if(/>/) {
		chomp;
		$_ =~ s/\[//g;
		$_ =~ s/\]//g;
		@line = split(' ', $_);
		print("\n@line[0]\t");
	}
	else {
		chomp;
		print("$_");
	}
}
