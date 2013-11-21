package TimeRec::DB::Schema::Result::Statuse;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

TimeRec::DB::Schema::Result::Statuse

=cut

__PACKAGE__->table("statuses");

=head1 ACCESSORS

=head2 statusID

  accessor: 'status_id'
  data_type: 'tinyint'
  is_auto_increment: 1
  is_nullable: 0

=head2 status

  data_type: 'varchar'
  is_nullable: 0
  size: 200

=cut

__PACKAGE__->add_columns(
  "statusID",
  {
    accessor          => "status_id",
    data_type         => "tinyint",
    is_auto_increment => 1,
    is_nullable       => 0,
  },
  "status",
  { data_type => "varchar", is_nullable => 0, size => 200 },
);
__PACKAGE__->set_primary_key("statusID");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2013-11-21 15:57:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:2gegVPZlIKgzeT+F+/WMFQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
