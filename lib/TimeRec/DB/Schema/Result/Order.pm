package TimeRec::DB::Schema::Result::Order;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

TimeRec::DB::Schema::Result::Order

=cut

__PACKAGE__->table("orders");

=head1 ACCESSORS

=head2 orderID

  accessor: 'order_id'
  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 type

  data_type: 'varchar'
  is_nullable: 0
  size: 30

=head2 customer_order_ID

  accessor: 'customer_order_id'
  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 order_date

  data_type: 'date'
  default_value: '0000-00-00'
  is_nullable: 0

=head2 delivery_date

  data_type: 'date'
  default_value: '0000-00-00'
  is_nullable: 0

=head2 currency

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 payment

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 terms_and_conditions

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 partial_shipment_allowed

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 transport

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 remark

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "orderID",
  {
    accessor          => "order_id",
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
  },
  "type",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "customer_order_ID",
  {
    accessor => "customer_order_id",
    data_type => "varchar",
    is_nullable => 0,
    size => 50,
  },
  "order_date",
  { data_type => "date", default_value => "0000-00-00", is_nullable => 0 },
  "delivery_date",
  { data_type => "date", default_value => "0000-00-00", is_nullable => 0 },
  "currency",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "payment",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "terms_and_conditions",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "partial_shipment_allowed",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "transport",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "remark",
  { data_type => "varchar", is_nullable => 0, size => 255 },
);
__PACKAGE__->set_primary_key("orderID");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2013-11-21 15:57:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:y8tUYz0zwhQJYq7DN8kXiw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
