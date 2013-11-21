package TimeRec::DB::Schema::Result::Party;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

TimeRec::DB::Schema::Result::Party

=cut

__PACKAGE__->table("parties");

=head1 ACCESSORS

=head2 partyID

  accessor: 'party_id'
  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 addressID

  accessor: 'address_id'
  data_type: 'integer'
  is_nullable: 0

=head2 billingaddressID

  accessor: 'billingaddress_id'
  data_type: 'integer'
  is_nullable: 0

=head2 deliveryaddressID

  accessor: 'deliveryaddress_id'
  data_type: 'integer'
  is_nullable: 0

=head2 comment

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "partyID",
  {
    accessor          => "party_id",
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
  },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "addressID",
  { accessor => "address_id", data_type => "integer", is_nullable => 0 },
  "billingaddressID",
  {
    accessor    => "billingaddress_id",
    data_type   => "integer",
    is_nullable => 0,
  },
  "deliveryaddressID",
  {
    accessor    => "deliveryaddress_id",
    data_type   => "integer",
    is_nullable => 0,
  },
  "comment",
  { data_type => "text", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("partyID");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2013-11-21 15:57:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:zuYZgaDFYgltcwnXvzqOzQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
