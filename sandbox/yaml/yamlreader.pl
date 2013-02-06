# http://www.perlmonks.org/index.pl?node_id=620076
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