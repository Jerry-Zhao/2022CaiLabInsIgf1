#! /usr/local/perl -w

open(INA,"count/CaiLab_Astro_DIV14_IRflox_Ctrl_rep1_exonic_gene_Jerry.txt")||die("Can't open INA:$!\n");
open(INB,"count/CaiLab_Astro_DIV14_IRflox_Ctrl_rep2_exonic_gene_Jerry.txt")||die("Can't open INA:$!\n");
open(INC,"count/CaiLab_Astro_DIV14_IRflox_Ctrl_rep3_exonic_gene_Jerry.txt")||die("Can't open INA:$!\n");
open(IND,"count/CaiLab_Astro_DIV14_IRflox_Ctrl_rep4_exonic_gene_Jerry.txt")||die("Can't open INA:$!\n");

open(INE,"count/CaiLab_Astro_DIV14_IRflox_Ins_rep1_exonic_gene_Jerry.txt")||die("Can't open INA:$!\n");
open(INF,"count/CaiLab_Astro_DIV14_IRflox_Ins_rep2_exonic_gene_Jerry.txt")||die("Can't open INA:$!\n");
open(ING,"count/CaiLab_Astro_DIV14_IRflox_Ins_rep3_exonic_gene_Jerry.txt")||die("Can't open INA:$!\n");
open(INH,"count/CaiLab_Astro_DIV14_IRflox_Ins_rep4_exonic_gene_Jerry.txt")||die("Can't open INA:$!\n");

open(INI,"count/CaiLab_Astro_DIV14_IRflox_IGF1_rep1_exonic_gene_Jerry.txt")||die("Can't open INA:$!\n");
open(INJ,"count/CaiLab_Astro_DIV14_IRflox_IGF1_rep2_exonic_gene_Jerry.txt")||die("Can't open INA:$!\n");
open(INK,"count/CaiLab_Astro_DIV14_IRflox_IGF1_rep3_exonic_gene_Jerry.txt")||die("Can't open INA:$!\n");
open(INL,"count/CaiLab_Astro_DIV14_IRflox_IGF1_rep4_exonic_gene_Jerry.txt")||die("Can't open INA:$!\n");

open(INM,"count/CaiLab_Astro_DIV14_IRKO_Ctrl_rep1_exonic_gene_Jerry.txt")||die("Can't open INA:$!\n");
open(INN,"count/CaiLab_Astro_DIV14_IRKO_Ctrl_rep2_exonic_gene_Jerry.txt")||die("Can't open INA:$!\n");
open(INO,"count/CaiLab_Astro_DIV14_IRKO_Ctrl_rep3_exonic_gene_Jerry.txt")||die("Can't open INA:$!\n");
open(INP,"count/CaiLab_Astro_DIV14_IRKO_Ctrl_rep4_exonic_gene_Jerry.txt")||die("Can't open INA:$!\n");

open(INQ,"count/CaiLab_Astro_DIV14_IRKO_Ins_rep1_exonic_gene_Jerry.txt")||die("Can't open INA:$!\n");
open(INR,"count/CaiLab_Astro_DIV14_IRKO_Ins_rep2_exonic_gene_Jerry.txt")||die("Can't open INA:$!\n");
open(INS,"count/CaiLab_Astro_DIV14_IRKO_Ins_rep3_exonic_gene_Jerry.txt")||die("Can't open INA:$!\n");
open(INT,"count/CaiLab_Astro_DIV14_IRKO_Ins_rep4_exonic_gene_Jerry.txt")||die("Can't open INA:$!\n");

open(INU,"count/CaiLab_Astro_DIV14_IRKO_IGF1_rep1_exonic_gene_Jerry.txt")||die("Can't open INA:$!\n");
open(INV,"count/CaiLab_Astro_DIV14_IRKO_IGF1_rep2_exonic_gene_Jerry.txt")||die("Can't open INA:$!\n");
open(INW,"count/CaiLab_Astro_DIV14_IRKO_IGF1_rep3_exonic_gene_Jerry.txt")||die("Can't open INA:$!\n");
open(INX,"count/CaiLab_Astro_DIV14_IRKO_IGF1_rep4_exonic_gene_Jerry.txt")||die("Can't open INA:$!\n");

open(OUT,">Merged_CaiLab_Astro_DIV14_IRflox_IRKO_exonic_gene_Jerry.xls")||die("Can't write OUT:$!\n");

while(<INA>){chomp;if(/^(ENSMUSG\d+\_[\w\.\-\(\)]+)\t(\d+)$/){$floxCK1{$1}=$2;}else{print"error1\t$_\n";}}
while(<INB>){chomp;if(/^(ENSMUSG\d+\_[\w\.\-\(\)]+)\t(\d+)$/){$floxCK2{$1}=$2;}else{print"error2\t$_\n";}}
while(<INC>){chomp;if(/^(ENSMUSG\d+\_[\w\.\-\(\)]+)\t(\d+)$/){$floxCK3{$1}=$2;}else{print"error3\t$_\n";}}
while(<IND>){chomp;if(/^(ENSMUSG\d+\_[\w\.\-\(\)]+)\t(\d+)$/){$floxCK4{$1}=$2;}else{print"error4\t$_\n";}}

while(<INE>){chomp;if(/^(ENSMUSG\d+\_[\w\.\-\(\)]+)\t(\d+)$/){$floxIns1{$1}=$2;}else{print"error5\t$_\n";}}
while(<INF>){chomp;if(/^(ENSMUSG\d+\_[\w\.\-\(\)]+)\t(\d+)$/){$floxIns2{$1}=$2;}else{print"error6\t$_\n";}}
while(<ING>){chomp;if(/^(ENSMUSG\d+\_[\w\.\-\(\)]+)\t(\d+)$/){$floxIns3{$1}=$2;}else{print"error7\t$_\n";}}
while(<INH>){chomp;if(/^(ENSMUSG\d+\_[\w\.\-\(\)]+)\t(\d+)$/){$floxIns4{$1}=$2;}else{print"error8\t$_\n";}}

while(<INI>){chomp;if(/^(ENSMUSG\d+\_[\w\.\-\(\)]+)\t(\d+)$/){$floxIGF1{$1}=$2;}else{print"error9\t$_\n";}}
while(<INJ>){chomp;if(/^(ENSMUSG\d+\_[\w\.\-\(\)]+)\t(\d+)$/){$floxIGF2{$1}=$2;}else{print"error10\t$_\n";}}
while(<INK>){chomp;if(/^(ENSMUSG\d+\_[\w\.\-\(\)]+)\t(\d+)$/){$floxIGF3{$1}=$2;}else{print"error11\t$_\n";}}
while(<INL>){chomp;if(/^(ENSMUSG\d+\_[\w\.\-\(\)]+)\t(\d+)$/){$floxIGF4{$1}=$2;}else{print"error12\t$_\n";}}

while(<INM>){chomp;if(/^(ENSMUSG\d+\_[\w\.\-\(\)]+)\t(\d+)$/){$koCK1{$1}=$2;}else{print"error13\t$_\n";}}
while(<INN>){chomp;if(/^(ENSMUSG\d+\_[\w\.\-\(\)]+)\t(\d+)$/){$koCK2{$1}=$2;}else{print"error14\t$_\n";}}
while(<INO>){chomp;if(/^(ENSMUSG\d+\_[\w\.\-\(\)]+)\t(\d+)$/){$koCK3{$1}=$2;}else{print"error15\t$_\n";}}
while(<INP>){chomp;if(/^(ENSMUSG\d+\_[\w\.\-\(\)]+)\t(\d+)$/){$koCK4{$1}=$2;}else{print"error16\t$_\n";}}

while(<INQ>){chomp;if(/^(ENSMUSG\d+\_[\w\.\-\(\)]+)\t(\d+)$/){$koIns1{$1}=$2;}else{print"error17\t$_\n";}}
while(<INR>){chomp;if(/^(ENSMUSG\d+\_[\w\.\-\(\)]+)\t(\d+)$/){$koIns2{$1}=$2;}else{print"error18\t$_\n";}}
while(<INS>){chomp;if(/^(ENSMUSG\d+\_[\w\.\-\(\)]+)\t(\d+)$/){$koIns3{$1}=$2;}else{print"error19\t$_\n";}}
while(<INT>){chomp;if(/^(ENSMUSG\d+\_[\w\.\-\(\)]+)\t(\d+)$/){$koIns4{$1}=$2;}else{print"error20\t$_\n";}}

while(<INU>){chomp;if(/^(ENSMUSG\d+\_[\w\.\-\(\)]+)\t(\d+)$/){$koIGF1{$1}=$2;}else{print"error21\t$_\n";}}
while(<INV>){chomp;if(/^(ENSMUSG\d+\_[\w\.\-\(\)]+)\t(\d+)$/){$koIGF2{$1}=$2;}else{print"error22\t$_\n";}}
while(<INW>){chomp;if(/^(ENSMUSG\d+\_[\w\.\-\(\)]+)\t(\d+)$/){$koIGF3{$1}=$2;}else{print"error23\t$_\n";}}
while(<INX>){chomp;if(/^(ENSMUSG\d+\_[\w\.\-\(\)]+)\t(\d+)$/){$koIGF4{$1}=$2;}else{print"error24\t$_\n";}}

print OUT "\tIRflox_Ctrl_rep1\tIRflox_Ctrl_rep2\tIRflox_Ctrl_rep3\tIRflox_Ctrl_rep4\t";
print OUT "IRflox_Ins_rep1\tIRflox_Ins_rep2\tIRflox_Ins_rep3\tIRflox_Ins_rep4\t";
print OUT "IRflox_IGF1_rep1\tIRflox_IGF1_rep2\tIRflox_IGF1_rep3\tIRflox_IGF1_rep4\t";
print OUT "IRKO_Ctrl_rep1\tIRKO_Ctrl_rep2\tIRKO_Ctrl_rep3\tIRKO_Ctrl_rep4\t";
print OUT "IRKO_Ins_rep1\tIRKO_Ins_rep2\tIRKO_Ins_rep3\tIRKO_Ins_rep4\t";
print OUT "IRKO_IGF1_rep1\tIRKO_IGF1_rep2\tIRKO_IGF1_rep3\tIRKO_IGF1_rep4\n";

my $a1=0;
foreach (keys %floxCK1)
{
 $a1++;
 print OUT "$_\t";
 print OUT "$floxCK1{$_}\t$floxCK2{$_}\t$floxCK3{$_}\t$floxCK4{$_}\t";
 print OUT "$floxIns1{$_}\t$floxIns2{$_}\t$floxIns3{$_}\t$floxIns4{$_}\t";
 print OUT "$floxIGF1{$_}\t$floxIGF2{$_}\t$floxIGF3{$_}\t$floxIGF4{$_}\t";
 print OUT "$koCK1{$_}\t$koCK2{$_}\t$koCK3{$_}\t$koCK4{$_}\t";
 print OUT "$koIns1{$_}\t$koIns2{$_}\t$koIns3{$_}\t$koIns4{$_}\t";
 print OUT "$koIGF1{$_}\t$koIGF2{$_}\t$koIGF3{$_}\t$koIGF4{$_}\n";
}

print "total-genes: $a1\n";

close OUT;


