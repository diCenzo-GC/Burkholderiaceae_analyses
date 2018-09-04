#!usr/bin/perl
use 5.010;

# Parse ParA
$parAinput = 'HMMscanTop/ParA.csv';
$parAoutput = 'HMMscanTop/ParA_names.txt';
open($parAin, '<', $parAinput);
open($parAout, '>', $parAoutput);
while(<$parAin>) {
	@line = split(',', $_);
	@replicon = split('__', @line[0]);
	if(@line[9] eq 'ParA') {
		say $parAout ("@line[0]\t@replicon[0]\t@line[1]");
	}
	elsif(@line[9] eq 'TIGR03453') {
		say $parAout ("@line[0]\t@replicon[0]\t@line[1]");
	}
}
close($parAin);
close($parAout);

# Parse ParB
$parBinput = 'HMMscanTop/ParBc.csv';
$parBoutput = 'HMMscanTop/ParBc_names.txt';
open($parBin, '<', $parBinput);
open($parBout, '>', $parBoutput);
while(<$parBin>) {
	@line = split(',', $_);
	@replicon = split('__', @line[0]);
	if(@line[9] eq 'ParBc') {
		say $parBout ("@line[0]\t@replicon[0]\t@line[1]");
	}
	elsif(@line[9] eq 'RepB') {
		say $parBout ("@line[0]\t@replicon[0]\t@line[1]");
	}
	elsif(@line[9] eq 'TIGR00180') {
		say $parBout ("@line[0]\t@replicon[0]\t@line[1]");
	}
#	elsif(@line[9] eq 'TIGR03734') {
#		say $parBout ("@line[0]");
#	}
#	elsif(@line[9] eq 'TIGR03764') {
#		say $parBout ("@line[0]");
#	}
}
close($parBin);
close($parBout);

# Parse Rep
$repInput = 'HMMscanTop/Rep_3.csv';
$repOutput = 'HMMscanTop/Rep_3_names.txt';
open($repIn, '<', $repInput);
open($repOut, '>', $repOutput);
while(<$repIn>) {
	@line = split(',', $_);
	@replicon = split('__', @line[0]);
	if(@line[9] eq 'Rep_3') {
		say $repOut ("@line[0]\t@replicon[0]\t@line[1]");
	}
	elsif(@line[9] eq 'RPA') {
		say $repOut ("@line[0]\t@replicon[0]\t@line[1]");
	}
}
close($repIn);
close($repOut);
