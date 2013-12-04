use utf8;
package TimeRec::DB::Schema::Result::Orderitem;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

TimeRec::DB::Schema::Result::Orderitem

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<orderitems>

=cut

__PACKAGE__->table("orderitems");

=head1 ACCESSORS

=head2 orderitem_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 order_id

  data_type: 'integer'
  is_nullable: 0

=head2 line_item_id

  data_type: 'integer'
  is_nullable: 0

=head2 article_id

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
  datetime_undef_if_invalid: 1
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
  "orderitem_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "order_id",
  { data_type => "integer", is_nullable => 0 },
  "line_item_id",
  { data_type => "integer", is_nullable => 0 },
  "article_id",
  { data_type => "integer", is_nullable => 0 },
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
  {
    data_type => "date",
    datetime_undef_if_invalid => 1,
    default_value => "0000-00-00",
    is_nullable => 0,
  },
  "partial_shipment_allowed",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "transport",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "remark",
  { data_type => "varchar", is_nullable => 0, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</orderitem_id>

=back

=cut

__PACKAGE__->set_primary_key("orderitem_id");


# Created by DBIx::Class::Schema::Loader v0.07038 @ 2013-12-03 14:20:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:873Mweh5MssGOcpYFiiREg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
