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
  
  AproJo::DB::Schema::Result::Address
  AproJo::DB::Schema::Result::Article
  AproJo::DB::Schema::Result::Configuration
  AproJo::DB::Schema::Result::Contact
  AproJo::DB::Schema::Result::Group
  AproJo::DB::Schema::Result::GroupsUser
  AproJo::DB::Schema::Result::Order
  AproJo::DB::Schema::Result::Orderitem
  AproJo::DB::Schema::Result::Party
  AproJo::DB::Schema::Result::Preference
  AproJo::DB::Schema::Result::Status
  AproJo::DB::Schema::Result::TimeEntry
  AproJo::DB::Schema::Result::Unit
  AproJo::DB::Schema::Result::User
  AproJo::DB::Schema::Result::Usertime
  
  AproJo::Form::User
  
  Mojolicious::Plugin::Form
  
  MojoX::Form
  MojoX::Form::Field

);

for my $module (@modules) {
    use_ok($module);
}

done_testing;
