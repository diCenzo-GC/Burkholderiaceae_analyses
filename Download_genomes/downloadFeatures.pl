#!usr/bin/perl
use 5.010;

# make arrays with the species names and ftp links
while(<>) {
	chomp;
	@line = split("\t",$_); # split the input line into an array based on commas
	push(@species,@line[0]); # make an array of the species names
	push(@ftp,@line[1]); # make an array of the ftp links
}

#download, rename, and move the files
foreach $species (@species) { # for each species of interest
	$ftp = @ftp[0];
	@ftp2 = split('/',$ftp); # prepare a variable with the current file name
	$ftp .= "/@ftp2[9]_feature_table.txt.gz";
	system("wget --quiet $ftp"); # download the proteome from the appropriate FTP link
	$species .= ".txt.gz"; # prepare a variable for what the file is to be renamed as
	@ftp2 = split('/',$ftp); # prepare a variable with the current file name
	system("mv @ftp2[10] FeatureTables/$species"); # move the file to the correct directory and rename
	shift(@ftp); # shift the array to the next FTP link
}