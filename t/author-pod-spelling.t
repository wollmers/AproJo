#!perl

BEGIN {
  unless ($ENV{AUTHOR_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for author testing');
  }
}

use Test::More;

use Test::Spelling;

add_stopwords(qw(
     AproJo
     Helmut
     Mojolicious
     Wollmersdorfer
     jQuery
     websockets
));
all_pod_files_spelling_ok();
