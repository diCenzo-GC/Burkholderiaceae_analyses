#!usr/bin/perl
use 5.010;

$current = 'test';
$previous = 'test';

while(<>) {
	@line = split(',',$_);
	$current = @line[0];
	unless($current eq $previous) {
		print($_);
	}
	$previous = $current;
}
