#!usr/bin/perl
use 5.010;

#ProteinName,ProteinLength,FS_E-value,FS+_Score,FS_Bias,BD_E-value,BD_Score,BD_Bias,Exp,N,Model,Description

while(<>) {
	if(/Query:/../\/\//) {
		if(/Query:/) {
			$_ =~ s/\ \ /\ /g;
			$_ =~ s/\ \ /\ /g;
			$_ =~ s/\ \ /\ /g;
			$_ =~ s/\ \ /\ /g;
			$_ =~ s/\ \ /\ /g;
			$_ =~ s/\ /,/g;
			@queryLine = split(',',$_);
			$name = @queryLine[1];
		}
		if(/full\ sequence/../Domain\ annotation/) {
			unless(/---/ or /score/ or /Domain\ annotation/) {
				$temp = substr($_, 0, 72);
				$_ =~ s/\ \ /\?\?/g;
				$_ =~ s/\ \ /\ /g;
				$_ =~ s/\ \ /\ /g;
				$_ =~ s/\ \ /\ /g;
				$_ =~ s/\ \ /\ /g;
				$_ =~ s/\ \ /\ /g;
				$_ =~ s/,\ /_/g;
				$_ =~ s/\?\?\ /,/g;
				$_ =~ s/\?\?/,/g;
				$_ =~ s/,,/,/g;
				$_ =~ s/,,/,/g;
				$_ =~ s/,,/,/g;
				$_ =~ s/\ /_/g;
				$hit = $_;
				$test = "$name,$hit";
				if($test ne "$name,\n") {
					print("$name$hit");
				}
			}
		}
	}
}
