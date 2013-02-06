# yam1.pl needs perl-YAML.noarch : YAML Ain't Markup Language (tm)
use strict;
use warnings;

use YAML;

my $config = {
  NAME => 'John Doe',
  ADDRESS => '123 Main St.',
  PHONE => {
    'Home' => '123-4444',
    'Work' => '123-5555',
  },
  CONTACTS => [
    'John',
    'Paul',
    'George',
  ],
};

print Dump( $config ), "\n";
