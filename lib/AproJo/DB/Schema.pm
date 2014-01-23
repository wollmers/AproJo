package AproJo::DB::Schema;

use strict;
use warnings;

use base 'DBIx::Class::Schema';

our $VERSION = '1';
$VERSION = eval $VERSION;

__PACKAGE__->load_namespaces;

1;
