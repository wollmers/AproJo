package TimeRec::DB::Schema::Result::Usertime;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

TimeRec::DB::Schema::Result::Usertime

=cut

__PACKAGE__->table("usertimes");

=head1 ACCESSORS

=head2 usertimesID

  accessor: 'usertimes_id'
  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 userID

  accessor: 'user_id'
  data_type: 'integer'
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

=cut

__PACKAGE__->add_columns(
  "usertimesID",
  {
    accessor          => "usertimes_id",
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
  },
  "userID",
  { accessor => "user_id", data_type => "integer", is_nullable => 0 },
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
);
__PACKAGE__->set_primary_key("usertimesID");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2013-11-21 15:57:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:PLL5mD2KqWuRJvPsX7JRNg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
