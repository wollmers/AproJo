use utf8;
package TimeRec::DB::Schema::Result::Contact;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

TimeRec::DB::Schema::Result::Contact

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<contacts>

=cut

__PACKAGE__->table("contacts");

=head1 ACCESSORS

=head2 contact_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 firstname

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 lastname

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 title

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 gender

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 politeness

  data_type: 'varchar'
  is_nullable: 0
  size: 10

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
  "contact_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "firstname",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "lastname",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "title",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "gender",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "politeness",
  { data_type => "varchar", is_nullable => 0, size => 10 },
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

=item * L</contact_id>

=back

=cut

__PACKAGE__->set_primary_key("contact_id");


# Created by DBIx::Class::Schema::Loader v0.07038 @ 2013-12-03 14:20:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:gyO6CAqM7P3+ONq5lpWJ0A


# You can replace this text with custom content, and it will be preserved on regeneration
1;
