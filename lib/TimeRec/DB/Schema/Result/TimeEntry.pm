package TimeRec::DB::Schema::Result::TimeEntry;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

TimeRec::DB::Schema::Result::TimeEntry

=cut

__PACKAGE__->table("timeEntries");

=head1 ACCESSORS

=head2 timeEntryID

  accessor: 'time_entry_id'
  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 start

  data_type: 'datetime'
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 end

  data_type: 'datetime'
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 duration

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 userID

  accessor: 'user_id'
  data_type: 'integer'
  is_nullable: 0

=head2 orderID

  accessor: 'order_id'
  data_type: 'integer'
  is_nullable: 0

=head2 orderitemID

  accessor: 'orderitem_id'
  data_type: 'integer'
  is_nullable: 0

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 comment

  data_type: 'text'
  is_nullable: 1

=head2 commentType

  accessor: 'comment_type'
  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 cleared

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 location

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 approved

  data_type: 'decimal'
  is_nullable: 1
  size: [10,2]

=head2 statusID

  accessor: 'status_id'
  data_type: 'smallint'
  is_nullable: 0

=head2 billable

  data_type: 'tinyint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "timeEntryID",
  {
    accessor          => "time_entry_id",
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
  },
  "start",
  {
    data_type     => "datetime",
    default_value => "0000-00-00 00:00:00",
    is_nullable   => 0,
  },
  "end",
  {
    data_type     => "datetime",
    default_value => "0000-00-00 00:00:00",
    is_nullable   => 0,
  },
  "duration",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "userID",
  { accessor => "user_id", data_type => "integer", is_nullable => 0 },
  "orderID",
  { accessor => "order_id", data_type => "integer", is_nullable => 0 },
  "orderitemID",
  { accessor => "orderitem_id", data_type => "integer", is_nullable => 0 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "comment",
  { data_type => "text", is_nullable => 1 },
  "commentType",
  {
    accessor      => "comment_type",
    data_type     => "tinyint",
    default_value => 0,
    is_nullable   => 0,
  },
  "cleared",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "location",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "approved",
  { data_type => "decimal", is_nullable => 1, size => [10, 2] },
  "statusID",
  { accessor => "status_id", data_type => "smallint", is_nullable => 0 },
  "billable",
  { data_type => "tinyint", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("timeEntryID");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2013-11-21 15:57:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:scNzjXmNX38/VihfW5iusA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
