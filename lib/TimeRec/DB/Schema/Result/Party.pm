use utf8;
package TimeRec::DB::Schema::Result::Party;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

TimeRec::DB::Schema::Result::Party

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<parties>

=cut

__PACKAGE__->table("parties");

=head1 ACCESSORS

=head2 party_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 address_id

  data_type: 'integer'
  is_nullable: 0

=head2 billingaddress_id

  data_type: 'integer'
  is_nullable: 0

=head2 deliveryaddress_id

  data_type: 'integer'
  is_nullable: 0

=head2 comment

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "party_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "address_id",
  { data_type => "integer", is_nullable => 0 },
  "billingaddress_id",
  { data_type => "integer", is_nullable => 0 },
  "deliveryaddress_id",
  { data_type => "integer", is_nullable => 0 },
  "comment",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</party_id>

=back

=cut

__PACKAGE__->set_primary_key("party_id");


# Created by DBIx::Class::Schema::Loader v0.07038 @ 2013-12-03 14:20:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:sBfMQ58JxSA9XfG8BbEcRA


# You can replace this text with custom content, and it will be preserved on regeneration
__PACKAGE__->has_one(
    'address', 
    'TimeRec::DB::Schema::Result::Address', 
    { 'foreign.address_id' => 'self.address_id' },
    {cascade_delete => 0}
);

__PACKAGE__->might_have(
    'billingaddress', 
    'TimeRec::DB::Schema::Result::Address', 
    { 'foreign.address_id' => 'self.billingaddress_id' },
    {cascade_delete => 0}
);

__PACKAGE__->might_have(
    'deliveryaddress', 
    'TimeRec::DB::Schema::Result::Address', 
    { 'foreign.address_id' => 'self.deliveryaddress_id' },
    {cascade_delete => 0}
);

1;
