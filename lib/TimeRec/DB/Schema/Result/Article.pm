package TimeRec::DB::Schema::Result::Article;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

TimeRec::DB::Schema::Result::Article

=cut

__PACKAGE__->table("articles");

=head1 ACCESSORS

=head2 articleID

  accessor: 'article_id'
  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 description_short

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 description_long

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 unit

  data_type: 'integer'
  is_nullable: 0

=head2 price

  data_type: 'decimal'
  default_value: 0.00
  is_nullable: 0
  size: [10,2]

=head2 timeable

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "articleID",
  {
    accessor          => "article_id",
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
  },
  "description_short",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "description_long",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "unit",
  { data_type => "integer", is_nullable => 0 },
  "price",
  {
    data_type => "decimal",
    default_value => "0.00",
    is_nullable => 0,
    size => [10, 2],
  },
  "timeable",
  { data_type => "integer", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("articleID");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2013-11-21 15:57:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:vLf5SC1t94JVW4DxxbHEGA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
