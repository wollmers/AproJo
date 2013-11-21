package TimeRec::DB::Schema::Result::Group;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

TimeRec::DB::Schema::Result::Group

=cut

__PACKAGE__->table("groups");

=head1 ACCESSORS

=head2 groupID

  accessor: 'group_id'
  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 160

=head2 trash

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "groupID",
  {
    accessor          => "group_id",
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
  },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 160 },
  "trash",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("groupID");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2013-11-21 15:57:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:VyAQN1doe/GWR1LWkU8Jhw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
