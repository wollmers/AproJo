package TimeRec::DB::Schema::Result::Orderitem;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

TimeRec::DB::Schema::Result::Orderitem

=cut

__PACKAGE__->table("orderitems");

=head1 ACCESSORS

=head2 orderitemID

  accessor: 'orderitem_id'
  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 orderID

  accessor: 'order_id'
  data_type: 'integer'
  is_nullable: 0

=head2 line_item_ID

  accessor: 'line_item_id'
  data_type: 'integer'
  is_nullable: 0

=head2 article_ID

  accessor: 'article_id'
  data_type: 'integer'
  is_nullable: 0

=head2 quantity

  data_type: 'decimal'
  default_value: 0.00
  is_nullable: 0
  size: [10,2]

=head2 order_unit

  data_type: 'integer'
  is_nullable: 0

=head2 article_price

  data_type: 'decimal'
  default_value: 0.00
  is_nullable: 0
  size: [10,2]

=head2 delivery_date

  data_type: 'date'
  default_value: '0000-00-00'
  is_nullable: 0

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
  "orderitemID",
  {
    accessor          => "orderitem_id",
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
  },
  "orderID",
  { accessor => "order_id", data_type => "integer", is_nullable => 0 },
  "line_item_ID",
  { accessor => "line_item_id", data_type => "integer", is_nullable => 0 },
  "article_ID",
  { accessor => "article_id", data_type => "integer", is_nullable => 0 },
  "quantity",
  {
    data_type => "decimal",
    default_value => "0.00",
    is_nullable => 0,
    size => [10, 2],
  },
  "order_unit",
  { data_type => "integer", is_nullable => 0 },
  "article_price",
  {
    data_type => "decimal",
    default_value => "0.00",
    is_nullable => 0,
    size => [10, 2],
  },
  "delivery_date",
  { data_type => "date", default_value => "0000-00-00", is_nullable => 0 },
  "partial_shipment_allowed",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "transport",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "remark",
  { data_type => "varchar", is_nullable => 0, size => 255 },
);
__PACKAGE__->set_primary_key("orderitemID");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2013-11-21 15:57:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:q7gqr4bKT7n/LCCgrTkM3A


# You can replace this text with custom content, and it will be preserved on regeneration
1;
