#!usr/bin/perl
use 5.010;

# Input files
$clusterFile = 'cdhit_clustering/modifiedOutput.txt';
$proteinFile = 'ancestral_state/combinedProteome_names.txt';

# Get protein names
open($proteinNames, '<', $proteinFile);
while(<$proteinNames>) {
	chomp;
	$_ =~ s/\.\.\./XXXXX/g;
	push(@proteins, $_);
}
close($proteinNames);

# Get clusters
say("Protein\tCluster");
for $i (@proteins) {
	open($in, '<', $clusterFile);
	while(<$in>) {
		$_ =~ s/\.\.\./XXXXX/g;
		if(/$i/) {
			@line = split("\t", $_);
			@line[0] =~ s/>//;
			@line[0] =~ s/Cluster\ //;
			$j = $i;
			$j =~ s/XXXXX//;
			say("$j\t@line[0]");
			last;
		}
	}
	close($in);
}
