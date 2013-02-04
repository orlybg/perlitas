#!/usr/bin/perl
use strict;

sub echo {
	#print "@ARGV\n"
	my @params = @_;
	print "@params \n";
}

echo @ARGV
