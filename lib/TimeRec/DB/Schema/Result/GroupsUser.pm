package TimeRec::DB::Schema::Result::GroupsUser;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

TimeRec::DB::Schema::Result::GroupsUser

=cut

__PACKAGE__->table("groups_users");

=head1 ACCESSORS

=head2 groupID

  accessor: 'group_id'
  data_type: 'integer'
  is_nullable: 0

=head2 userID

  accessor: 'user_id'
  data_type: 'integer'
  is_nullable: 0

=head2 membershipRoleID

  accessor: 'membership_role_id'
  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "groupID",
  { accessor => "group_id", data_type => "integer", is_nullable => 0 },
  "userID",
  { accessor => "user_id", data_type => "integer", is_nullable => 0 },
  "membershipRoleID",
  {
    accessor    => "membership_role_id",
    data_type   => "integer",
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key("groupID", "userID");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2013-11-21 15:57:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:PSotarRbtukGU8h5QjAlBg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
