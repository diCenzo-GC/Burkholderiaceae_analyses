#!usr/bin/perl
use 5.010;

# Make an array with the names of the proteins to extract
$test = 0;
while(<>) {
	chomp;
	@line = split("\t", $_);
	push(@hits, @line[0]);
	$test++;
}
@hitsSorted = sort(@hits);

# variable for the protein fasta file
$proteinSequences = 'intermediaryFiles/combined_proteomes_HMM_modified.faa';
$count = 0;

# Extract the protein hits
for($n = 1; $n < 1000000; $n++) {
	open($aa, '<', $proteinSequences);
	while(<$aa>) {
		if($count < $test) {
			@line = split("\t", $_);
			@replicon = split('__', @line[0]);
			$i = @hitsSorted[$count];
			if(/$i/) {
				print("@replicon[0]\n@line[1]");
				$count++;
			}
		}
	}
	if($count == $test) {
		$n = 1000000;
	}
}

