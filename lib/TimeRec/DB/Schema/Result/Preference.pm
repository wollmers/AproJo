use utf8;
package TimeRec::DB::Schema::Result::Preference;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

TimeRec::DB::Schema::Result::Preference

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<preferences>

=cut

__PACKAGE__->table("preferences");

=head1 ACCESSORS

=head2 user_id

  data_type: 'integer'
  is_nullable: 0

=head2 option

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 value

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "user_id",
  { data_type => "integer", is_nullable => 0 },
  "option",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "value",
  { data_type => "varchar", is_nullable => 0, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</user_id>

=item * L</option>

=back

=cut

__PACKAGE__->set_primary_key("user_id", "option");


# Created by DBIx::Class::Schema::Loader v0.07038 @ 2013-12-03 14:20:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:q2dWNkJzm05xTaXHUaFkEQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
