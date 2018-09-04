#!usr/bin/perl
use File::Find;
use 5.010;
use Cwd;

# set variables
$pwd = cwd();
$parent = "$pwd/TrimAlmodified";
$species_list = "intermediaryFiles/refseqGenomeInformation.txt";
$temporaryFile = 'temporary.txt';
$test = 0;

# make an array of the species names
open($species,'<',$species_list);
while(<$species>) {
	$_ =~ s/\[//;
	$_ =~ s/\]//;
	$_ =~ s/_\t/\t/g;
	chomp;
	@line = split("\t",$_); # split the input line into an array based on commas
	push(@genomes,@line[0]); # make an array of the species names
}
close($species);

foreach $genome (@genomes) {
	open($temp,'>',$temporaryFile);
	find( \&search_all_folder, $parent );
	close($temp);
	open($temp2,'<',$temporaryFile);
	say(">$genome");
	while(<$temp2>) {
		print($_);
	}
	print("\n");
}	
unlink($temporaryFile);

sub search_all_folder {
	chomp $_;
	return if $_ eq '.' or $_ eq '..';
	&read_files ($_) if (-f);
}

sub read_files {
	($filename) = @_;
	open $fh, '<', $filename;
	while(<$fh>) {
		chomp;
		@lineA = split(',',$_);
		@lineA[0] =~ s/>//;
		if(@lineA[0] eq $genome) {
			$test++;
			print $temp (@lineA[2]);
		}
	}
	if($test == 0) {
		$characters = "-" x @lineA[1];
		print $temp ($characters);
	}
	$test = 0;
}
