#!usr/bin/perl
use 5.010;

while(<>) {
	if(/>Cluster/) {
		chomp;
		print("\n$_");
	}
	else {
		chomp;
		print("\t$_");
	}
}
