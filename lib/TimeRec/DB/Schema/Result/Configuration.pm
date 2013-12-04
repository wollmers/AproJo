use utf8;
package TimeRec::DB::Schema::Result::Configuration;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

TimeRec::DB::Schema::Result::Configuration

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<configuration>

=cut

__PACKAGE__->table("configuration");

=head1 ACCESSORS

=head2 option

  data_type: 'varchar'
  is_nullable: 0
  size: 255

name of option

=head2 value

  data_type: 'varchar'
  is_nullable: 0
  size: 255

value of option

=cut

__PACKAGE__->add_columns(
  "option",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "value",
  { data_type => "varchar", is_nullable => 0, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</option>

=back

=cut

__PACKAGE__->set_primary_key("option");


# Created by DBIx::Class::Schema::Loader v0.07038 @ 2013-12-03 14:20:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:+CClCWGqS2RK7ph19y8fvQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
