use strict;
use warnings;

use 5.8.0;
use Module::Build;

my $builder = Module::Build->new(
  module_name => 'TimeRec',
  dist_author => 'Helmut Wollmersdorfer',
  license => 'perl',
  
  requires => {
    'perl' => '5.8.0',
    'Mojolicious' => '3.0',
    'DBD::SQLite' => 0,
    'DBIx::Class' => 0,
    'DBIx::Class::Candy' => 0,
    'DBIx::Class::EncodedColumn' => 0,
    'Crypt::Eksblowfish::Bcrypt' => 0,
    'SQL::Translator' => 0,
    'Term::Prompt' => 0,
    'File::ShareDir' => 0,
  },
  configure_requires => {
    'Module::Build' => 0.38,
  },

  share_dir => 'lib/TimeRec/files',

  meta_merge => {
    resources  => {
      repository => "http://github.com/wollmers/timerec",
      bugtracker => "http://github.com/wollmers/timerec/issues",
    },
    no_index => {
      file      => [ 'README.pod' ],
    },
  }
);

$builder->create_build_script;

