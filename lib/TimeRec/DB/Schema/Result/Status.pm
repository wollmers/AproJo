use utf8;
package TimeRec::DB::Schema::Result::Status;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

TimeRec::DB::Schema::Result::Status

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<statuses>

=cut

__PACKAGE__->table("statuses");

=head1 ACCESSORS

=head2 status_id

  data_type: 'tinyint'
  is_auto_increment: 1
  is_nullable: 0

=head2 status

  data_type: 'varchar'
  is_nullable: 0
  size: 200

=cut

__PACKAGE__->add_columns(
  "status_id",
  { data_type => "tinyint", is_auto_increment => 1, is_nullable => 0 },
  "status",
  { data_type => "varchar", is_nullable => 0, size => 200 },
);

=head1 PRIMARY KEY

=over 4

=item * L</status_id>

=back

=cut

__PACKAGE__->set_primary_key("status_id");


# Created by DBIx::Class::Schema::Loader v0.07038 @ 2013-12-03 14:20:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:1EmCNWHLq81suDQFt9BPeA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
