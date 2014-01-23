package AproJo::DB::Schema::Result::GroupsUser;

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->table("groups_users");

__PACKAGE__->add_columns(
  "group_id",
  { data_type => "integer", is_nullable => 0 },
  "user_id",
  { data_type => "integer", is_nullable => 0 },

);

__PACKAGE__->set_primary_key("group_id", "user_id");

#__PACKAGE__->belongs_to('user_id' => 'AproJo::DB::Schema::Result::User');
#__PACKAGE__->belongs_to('group_id' => 'AproJo::DB::Schema::Result::Group');

1;
