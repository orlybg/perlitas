use strict;
use warnings;

sub print_file {
    my $file = shift;
    open FILE, $file;
    while (my $line = <FILE>) {
         print $line;
    }
}

sub cat {
    foreach my $file (@_) {
	print_file $file;
    }
}

cat @ARGV;
