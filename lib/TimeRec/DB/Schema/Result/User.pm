package TimeRec::DB::Schema::Result::User;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

TimeRec::DB::Schema::Result::User

=cut

__PACKAGE__->table("users");

=head1 ACCESSORS

=head2 userID

  accessor: 'user_id'
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

=head2 globalRoleID

  accessor: 'global_role_id'
  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "userID",
  {
    accessor          => "user_id",
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
  },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 160 },
  "alias",
  { data_type => "varchar", is_nullable => 1, size => 160 },
  "trash",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "active",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
  "mail",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "password",
  { data_type => "varchar", is_nullable => 1, size => 254 },
  "globalRoleID",
  { accessor => "global_role_id", data_type => "integer", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("userID");
__PACKAGE__->add_unique_constraint("name", ["name"]);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2013-11-21 15:57:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:KDfAhs/skd8IzknEkVPv3A


# You can replace this text with custom content, and it will be preserved on regeneration
1;