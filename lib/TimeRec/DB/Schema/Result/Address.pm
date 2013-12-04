use utf8;
package TimeRec::DB::Schema::Result::Address;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

TimeRec::DB::Schema::Result::Address

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<addresses>

=cut

__PACKAGE__->table("addresses");

=head1 ACCESSORS

=head2 address_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 name2

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 name3

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 department

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 contact_id

  data_type: 'integer'
  is_nullable: 0

=head2 street

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 zip

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 boxno

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 zipbox

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 city

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 state

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 country

  data_type: 'varchar'
  is_nullable: 0
  size: 6

=head2 vat_id

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 phone

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 fax

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 email

  data_type: 'varchar'
  is_nullable: 0
  size: 100

=head2 url

  data_type: 'varchar'
  is_nullable: 0
  size: 100

=cut

__PACKAGE__->add_columns(
  "address_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "name2",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "name3",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "department",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "contact_id",
  { data_type => "integer", is_nullable => 0 },
  "street",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "zip",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "boxno",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "zipbox",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "city",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "state",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "country",
  { data_type => "varchar", is_nullable => 0, size => 6 },
  "vat_id",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "phone",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "fax",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "email",
  { data_type => "varchar", is_nullable => 0, size => 100 },
  "url",
  { data_type => "varchar", is_nullable => 0, size => 100 },
);

=head1 PRIMARY KEY

=over 4

=item * L</address_id>

=back

=cut

__PACKAGE__->set_primary_key("address_id");


# Created by DBIx::Class::Schema::Loader v0.07038 @ 2013-12-03 14:20:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:3ZG73ETqWQMiN1u+HCwsIA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
