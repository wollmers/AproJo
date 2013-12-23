use utf8;
package TimeRec::DB::Schema::Result::User;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

TimeRec::DB::Schema::Result::User

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<users>

=cut

__PACKAGE__->table("users");

=head1 ACCESSORS

=head2 user_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 160

=head2 alias

  data_type: 'varchar'
  is_nullable: 1
  size: 160

=head2 trash

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 active

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=head2 mail

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 password

  data_type: 'varchar'
  is_nullable: 1
  size: 254

=head2 global_role_id

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "user_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 160 },
  "alias",
  { data_type => "varchar", is_nullable => 1, size => 160 },
  "trash",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "active",
  { data_type => "tinyint", default_value => 1, is_nullable => 1 },
  "mail",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "password",
  { data_type => "varchar", is_nullable => 1, size => 254 },
  "global_role_id",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</user_id>

=back

=cut

__PACKAGE__->set_primary_key("user_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<name>

=over 4

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("name", ["name"]);


# Created by DBIx::Class::Schema::Loader v0.07038 @ 2013-12-03 14:20:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:bwZ6N3Bq1+cOVfbZ27DHhQ


# You can replace this text with custom content, and it will be preserved on regeneration

__PACKAGE__->has_one(
    'global_role', 
    'TimeRec::DB::Schema::Result::Group', 
    { 'foreign.group_id' => 'self.global_role_id' },
    {cascade_delete => 0}
);

=comment

__PACKAGE__->has_one(
    'groups', 
    'TimeRec::DB::Schema::Result::Group', 
    { 'foreign.group_id' => 'self.global_role_id' },
    {cascade_delete => 0}
);

=cut

1;
