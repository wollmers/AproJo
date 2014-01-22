use utf8;
package TimeRec::DB::Schema::Result::TimeEntry;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

TimeRec::DB::Schema::Result::TimeEntry

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<time_entries>

=cut

__PACKAGE__->table("time_entries");

=head1 ACCESSORS

=head2 time_entry_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 start

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  default_value: '1900-01-01 00:00:00'
  is_nullable: 0

=head2 end

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  default_value: '1900-01-01 00:00:00'
  is_nullable: 0

=head2 duration

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

duration in seconds

=head2 user_id

  data_type: 'integer'
  is_nullable: 0

=head2 order_id

  data_type: 'integer'
  is_nullable: 0

=head2 orderitem_id

  data_type: 'integer'
  is_nullable: 0

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 comment

  data_type: 'text'
  is_nullable: 1

=head2 comment_type

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

=head2 status_id

  data_type: 'smallint'
  is_nullable: 0

=head2 billable

  data_type: 'tinyint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "time_entry_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "start",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    default_value => "1900-01-01 00:00:00",
    is_nullable => 0,
  },
  "end",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    default_value => "1900-01-01 00:00:00",
    is_nullable => 0,
  },
  "duration",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "user_id",
  { data_type => "integer", is_nullable => 0 },
  "order_id",
  { data_type => "integer", is_nullable => 0 },
  "orderitem_id",
  { data_type => "integer", is_nullable => 0 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "comment",
  { data_type => "text", is_nullable => 1 },
  "comment_type",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "cleared",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "location",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "approved",
  { data_type => "decimal", is_nullable => 1, size => [10, 2] },
  "status_id",
  { data_type => "smallint", is_nullable => 0 },
  "billable",
  { data_type => "tinyint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</time_entry_id>

=back

=cut

__PACKAGE__->set_primary_key("time_entry_id");


# Created by DBIx::Class::Schema::Loader v0.07038 @ 2013-12-03 14:20:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:k3dROXRMd+8svGanc04d4w


# You can replace this text with custom content, and it will be preserved on regeneration

__PACKAGE__->has_one('orderitem', 'TimeRec::DB::Schema::Result::Orderitem', 'orderitem_id');

1;
