#!/usr/bin/perl
  
use strict;
use warnings;
 
print @ARGV; 
my @files = glob("*.pl *.pm");
  
foreach my $file (@files) {
     print "$file\n";
  
}
  
exit 0;
