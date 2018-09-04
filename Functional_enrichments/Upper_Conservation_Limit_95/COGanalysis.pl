#!usr/bin/perl
use 5.010;

# Prepare a list of file names
@files = qw(
Burkholderia_allGenus_chromid.fasta
Burkholderia_allGenus_chromosome.fasta
Burkholderia_BCC_chromid.fasta
Burkholderia_BCC_chromosome.fasta
Burkholderia_BCC_megaplasmid.fasta
Burkholderia_nonBCC_chromid.fasta
Burkholderia_nonBCC_chromosome.fasta
Cupriavidus_allGenus_chromid.fasta
Cupriavidus_allGenus_chromosome.fasta
NC_005241.1.gff.proteome.faa
NC_008313.1.gff.proteome.faa
NC_008314.1.gff.proteome.faa
NC_008385.1.gff.proteome.faa
NC_008390.1.gff.proteome.faa
NC_008391.1.gff.proteome.faa
NC_008392.1.gff.proteome.faa
NC_010528.1.gff.proteome.faa
NC_010529.1.gff.proteome.faa
NC_010530.1.gff.proteome.faa
NC_010622.1.gff.proteome.faa
NC_010623.1.gff.proteome.faa
NC_010625.1.gff.proteome.faa
NC_010627.1.gff.proteome.faa
NC_010676.1.gff.proteome.faa
NC_010679.1.gff.proteome.faa
NC_010681.1.gff.proteome.faa
NZ_CP009209.1.gff.proteome.faa
NZ_CP009210.1.gff.proteome.faa
NZ_CP010518.3.gff.proteome.faa
NZ_CP011568.3.gff.proteome.faa
NZ_CP015016.1.gff.proteome.faa
Pandoraea_allGenus_chromosome.fasta
Paraburkholderia_allGenus_chromid.fasta
Paraburkholderia_allGenus_chromosome.fasta
Paraburkholderia_wMega_chromid.fasta
Paraburkholderia_wMega_chromosome.fasta
Paraburkholderia_wMega_megaplasmid.fasta
Paraburkholderia_woMega_chromid.fasta
Paraburkholderia_woMega_chromosome.fasta
Polynucleobacter_allGenus_chromosome.fasta
Ralstonia_allGenus_chromid.fasta
Ralstonia_allGenus_chromosome.fasta
);

# Array of each COG category
@COGs = qw(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z);

# Run the analysis
foreach $i (@files) {
	$total = 0;
	$input = "Proteomes/$i";
	open($in, '<', $input);
	while(<$in>) {
		if(/>/) {
			$total++;
		}
	}
	close($in);
	$i =~ s/faa/fasta/g;
	system("cut -f11 emapperOutput/$i.emapper.annotations | tail -n +4 | head -n -3 > COG_categories/$i.txt");
	foreach $j (@COGs) {
		$COGcount = 0;
		$input = "COG_categories/$i.txt";
		open($in, '<', $input);
		while(<$in>) {
			if(/$j/) {
				$COGcount++;
			}
		}
		close($in);
		$output = "COG_categories/$i.counted.txt";
		$percent = 100 * $COGcount / $total;
		open($out, '>>', $output);
		print $out ("$j\t$COGcount\t$total\t$percent\n");
		close($out);
	}
}
	
































