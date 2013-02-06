# yam4.pl - Works also! Yippie!
use strict;
use warnings;

use YAML;
use Data::Dumper;

# step 1: open file
open my $fh, '<', 'data.yml' 
  or die "can't open config file: $!";

# step 2: convert YAML file to perl hash ref
my $config = LoadFile($fh);
print Dumper($config), "\n";