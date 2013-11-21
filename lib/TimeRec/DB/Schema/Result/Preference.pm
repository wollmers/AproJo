package TimeRec::DB::Schema::Result::Preference;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

TimeRec::DB::Schema::Result::Preference

=cut

__PACKAGE__->table("preferences");

=head1 ACCESSORS

=head2 userID

  accessor: 'user_id'
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
  "userID",
  { accessor => "user_id", data_type => "integer", is_nullable => 0 },
  "option",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "value",
  { data_type => "varchar", is_nullable => 0, size => 255 },
);
__PACKAGE__->set_primary_key("userID", "option");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2013-11-21 15:57:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Aw6VRjfyH1apFz/Xd7cmbw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
