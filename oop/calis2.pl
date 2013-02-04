package my_class;
use strict;
use warnings;
{
  # All code is enclosed in block context

  my %bar;  # All vars are declared as hashes
  sub new {
    my $class = shift;
    my $this = \do{ my $scalar }; # object is a reference to scalar (inside out object)
    bless $this, $class;
    return $this;
  }

  sub set_bar {
    my $this = shift;
    $bar{$this} = shift;
  }

  sub get_bar {
    my $this = shift;
    return $bar{$this};
  }
}


my $o = my_class->new();
$o->set_bar(10);
print $o->get_bar();
