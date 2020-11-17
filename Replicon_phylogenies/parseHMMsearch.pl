#!usr/bin/perl
use 5.010;

while(<>) {
	if(/Description/../Domain\ annotation/) {
		if(/\ /) {
			unless(/------/ or /Domain\ annotation/ or /Description/) {
				print($_);
			}
		}
	}
}
