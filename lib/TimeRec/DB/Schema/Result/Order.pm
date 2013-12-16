use utf8;
package TimeRec::DB::Schema::Result::Order;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

TimeRec::DB::Schema::Result::Order

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<orders>

=cut

__PACKAGE__->table("orders");

=head1 ACCESSORS

=head2 order_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 type

  data_type: 'varchar'
  is_nullable: 0
  size: 30

=head2 customer_order_id

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 order_date

  data_type: 'date'
  datetime_undef_if_invalid: 1
  default_value: '0000-00-00'
  is_nullable: 0

=head2 delivery_date

  data_type: 'date'
  datetime_undef_if_invalid: 1
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
  "order_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "type",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "customer_order_id",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "order_date",
  {
    data_type => "date",
    datetime_undef_if_invalid => 1,
    default_value => "0000-00-00",
    is_nullable => 0,
  },
  "delivery_date",
  {
    data_type => "date",
    datetime_undef_if_invalid => 1,
    default_value => "0000-00-00",
    is_nullable => 0,
  },
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

=head1 PRIMARY KEY

=over 4

=item * L</order_id>

=back

=cut

__PACKAGE__->set_primary_key("order_id");


# Created by DBIx::Class::Schema::Loader v0.07038 @ 2013-12-03 14:20:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:q+gqHsBqZsow6OrT6BRgZg


## You can replace this text with custom content, and it will be preserved on regeneration

__PACKAGE__->has_many('orderitems', 'TimeRec::DB::Schema::Result::Orderitem', 'order_id');

1;
