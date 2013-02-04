#!/usr/bin/perl
use strict;
use warnings;

sub echo {
    my @params = @_;

    my @words  = @params[0, 2];
    print "@words\n";

    my $word = $params[0];
    print "$word\n";	

    my $palabra = @params;
    print "$palabra\n";

    my @foo = $palabra;
    print "@foo[0]\n";
}

echo @ARGV

