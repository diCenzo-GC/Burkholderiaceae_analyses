#!usr/bin/perl
use 5.010;

while(<>) {
	if(/>/) {
		chomp;
		say("$_");
	}
	else {
		print($_);
	}
}
		
