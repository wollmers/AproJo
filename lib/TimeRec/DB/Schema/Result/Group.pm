package TimeRec::DB::Schema::Result::Group;

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->table("groups");

__PACKAGE__->add_columns(
  "group_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 160 },
  "trash",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);

__PACKAGE__->set_primary_key("group_id");

__PACKAGE__->has_many('users' => 'TimeRec::DB::Schema::Result::User', 'group_id');


1;
