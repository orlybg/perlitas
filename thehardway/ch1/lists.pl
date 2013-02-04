#!/usr/bin/perl
use strict;
use warnings;

sub asigna {
 my ($p1, $p2, @params) = @_;
 print "param1: $p1, param2: $p2 rest of params: @params\n";
}

my @list = (1, 2, 3);
print "@list\n";

my $scalar1 = @list;
print "$scalar1\n";

my $scalar2 = (69,96,25);
print "$scalar2\n";


asigna @ARGV;


