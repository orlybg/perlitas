#!/usr/bin/perl
use strict;
use warnings;
use Scalar::Util 'blessed';


package Object;

sub new {
  return bless {}, shift;
}

sub setA {
  my $self = shift;
  my $a = shift;
  $self->{a}=$a;
}

sub getA {
  my $self = shift;
  return $self->{a};
}



############
my $o = Object->new;
$o->setA(10);
print $o->getA;
