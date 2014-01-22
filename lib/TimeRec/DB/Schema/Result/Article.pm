package TimeRec::DB::Schema::Result::Article;

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->table("articles");


__PACKAGE__->add_columns(
  "article_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
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

__PACKAGE__->set_primary_key("article_id");

1;
