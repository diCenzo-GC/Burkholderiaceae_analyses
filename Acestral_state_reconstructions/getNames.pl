#!usr/bin/perl
use 5.010;

while(<>) {
	if(/>/) {
		chomp;
		$name = $_;
		$name =~ s/>//;
		$name = $name . '...';
		print("$name\n");
	}
}
