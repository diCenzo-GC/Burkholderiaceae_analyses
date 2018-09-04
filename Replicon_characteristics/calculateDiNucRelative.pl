#!usr/bin/perl
use 5.010;

say("Accession\tAA\tAT\tAC\tAG\tTA\tTT\tTC\tTG\tCA\tCT\tCC\tCG\tGA\tGT\tGC\tGG");
while(<>) {
	chomp;
	# Turn input into an array
	@input = split("\t", $_);
	# Make out of 1 instead of out of 100
	@input[1] = @input[1] / 100;
	@input[2] = @input[2] / 100;
	@input[3] = @input[3] / 100;
	@input[4] = @input[4] / 100;
	# Calculate the expected dinucleotide frequency
	$ExpAA = @input[3] * @input[3];
	$ExpAT = @input[3] * @input[4];
	$ExpAC = @input[3] * @input[2];
	$ExpAG = @input[3] * @input[1];
	$ExpTA = @input[4] * @input[3];
	$ExpTT = @input[4] * @input[4];
	$ExpTC = @input[4] * @input[2];
	$ExpTG = @input[4] * @input[1];
	$ExpCA = @input[2] * @input[3];
	$ExpCT = @input[2] * @input[4];
	$ExpCC = @input[2] * @input[2];
	$ExpCG = @input[2] * @input[1];
	$ExpGA = @input[1] * @input[3];
	$ExpGT = @input[1] * @input[4];
	$ExpGC = @input[1] * @input[2];
	$ExpGG = @input[1] * @input[1];
	# Calculate the absolute difference in dinucleotide frequency for each dinucleotide
	$DiffAA = @input[5] / $ExpAA;
	$DiffAT = @input[6] / $ExpAT;
	$DiffAC = @input[7] / $ExpAC;
	$DiffAG = @input[8] / $ExpAG;
	$DiffTA = @input[9] / $ExpTA;
	$DiffTT = @input[10] / $ExpTT;
	$DiffTC = @input[11] / $ExpTC;
	$DiffTG = @input[12] / $ExpTG;
	$DiffCA = @input[13] / $ExpCA;
	$DiffCT = @input[14] / $ExpCT;
	$DiffCC = @input[15] / $ExpCC;
	$DiffCG = @input[16] / $ExpCG;
	$DiffGA = @input[17] / $ExpGA;
	$DiffGT = @input[18] / $ExpGT;
	$DiffGC = @input[19] / $ExpGC;
	$DiffGG = @input[20] / $ExpGG;
	# Print
	say("@intput[0]\t$DiffAA\t$DiffAT\t$DiffAC\t$DiffAG\t$DiffTA\t$DiffTT\t$DiffTC\t$DiffTG\t$DiffCA\t$DiffCT\t$DiffCC\t$DiffCG\t$DiffGA\t$DiffGT\t$DiffGC\t$DiffGG");
}
