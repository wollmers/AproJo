use utf8;
package TimeRec::DB::Schema::Result::Usertime;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

TimeRec::DB::Schema::Result::Usertime

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<usertimes>

=cut

__PACKAGE__->table("usertimes");

=head1 ACCESSORS

=head2 usertimes_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 user_id

  data_type: 'integer'
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

=cut

__PACKAGE__->add_columns(
  "usertimes_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "user_id",
  { data_type => "integer", is_nullable => 0 },
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
);

=head1 PRIMARY KEY

=over 4

=item * L</usertimes_id>

=back

=cut

__PACKAGE__->set_primary_key("usertimes_id");


# Created by DBIx::Class::Schema::Loader v0.07038 @ 2013-12-03 14:20:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:I5FxfW9YlEuQwgPaWRqu7Q


# You can replace this text with custom content, and it will be preserved on regeneration
1;
