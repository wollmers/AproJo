use strict;
use warnings;
use Test::More;

use lib qw( ../lib );

my @modules = qw(
  AproJo
  AproJo::Admin
  AproJo::Edit
  AproJo::Form
  AproJo::Front
  AproJo::Page
  AproJo::User
  
  AproJo::DB::Schema
  
  AproJo::Form::User
  
  Mojolicious::Plugin::Form
  
  MojoX::Form
  MojoX::Form::Field

);

for my $module (@modules) {
    use_ok($module);
}

done_testing;
