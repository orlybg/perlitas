#!/usr/bin/perl

use strict;
use warnings;

eval { require Nagios::Plugin && Nagios::Plugin->import };
if ($@) {
# assume a relatively recent Perl where FindBin is in core
no warnings;
require FindBin;
unshift @INC, map "$FindBin::Bin/$_",
qw(perl lib perl/lib ../perl ../lib ../perl/lib);
local $" = "\n\t";
eval {
require Nagios::Plugin && Nagios::Plugin->import
}
or die "Couldn't locate Nagios::Plugin in \n\t@INC\n";
}
