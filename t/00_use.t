use strict;
use warnings;
use Test::More;

use lib qw( ../lib );

my @modules = qw(
  TimeRec
  TimeRec::Admin
  TimeRec::Edit
  TimeRec::Form
  TimeRec::Front
  TimeRec::Page
  TimeRec::User
  
  TimeRec::Form::User
  
  Mojolicious::Plugin::Form
  
  MojoX::Form
  MojoX::Form::Field

);

for my $module (@modules) {
    use_ok($module);
}

done_testing;
