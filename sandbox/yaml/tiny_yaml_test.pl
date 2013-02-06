# perl-YAML-Tiny.noarch http://search.cpan.org/~adamk/YAML-Tiny-1.51/lib/YAML/Tiny.pm
# In your file

#---
#rootproperty: blah
    #section:
     # one: two
      #three: four
      #Foo: Bar
      #empty: ~

use strict;
use warnings;

use YAML::Tiny;
use Data::Dumper;
    
# Create a YAML file
my $yaml = YAML::Tiny->new;

# Open the config
$yaml = YAML::Tiny->read( 'file.yml' );

# Reading properties
my $root = $yaml->[0]->{rootproperty};
my $one  = $yaml->[0]->{section}->{one};
my $Foo  = $yaml->[0]->{section}->{Foo};

# Changing data
$yaml->[0]->{newsection} = { this => 'that' }; # Add a section
$yaml->[0]->{section}->{Foo} = 'Not Bar!';     # Change a value
delete $yaml->[0]->{section};                  # Delete a value

# Add an entire document
$yaml->[1] = [ 'foo', 'bar', 'baz' ];

# Save the file
#$yaml->write( 'file.conf' );

# dump it instead
print Dumper($yaml), "\n";
