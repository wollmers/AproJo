package AproJo::Command::setup;
use Mojo::Base 'Mojolicious::Command';

use Term::Prompt qw/prompt/;

has description => "Create the database for your AproJo application.\n";
has usage       => "usage: $0 setup\n";

use Mojo::JSON;
my $json = Mojo::JSON->new();

sub run {
  my ($self) = @_;

  my $user = prompt('x', 'Admin Username: ', '', '');
  my $full = prompt('x', 'Admin Full Name: ', '', '');
  my $pass1 = prompt('p', 'Admin Password: ', '', '');
  print "\n";

  #TODO check for acceptable password

  my $pass2 = prompt('p', 'Repeat Admin Password: ', '', '');
  print "\n";

  unless ($pass1 eq $pass2) {
    die "Passwords do not match";
  }

  $self->inject_sample_data($user, $pass1, $full);

  print "Database created! Run 'aprojo daemon' to start the server.\n";
}

sub inject_sample_data {
  my $self = shift;
  my $schema = eval { $_[-1]->isa('AproJo::DB::Schema') } ? pop() : $self->app->schema;

  my $user = shift or die "Must provide an administrative username";
  my $pass = shift or die "Must provide a password for $user";
  my $alias = shift || "Administrator";

  $schema->deploy({ add_drop_table => 1});

  my $group = $schema->resultset('Group')->create({
    'name' => 'admin',
  });

  my $admin = $schema->resultset('User')->create({
    name => $user,
    alias => $alias,
    password => $pass,
    group_id => $group->group_id
  });
  
  #my $group = $admin->add_to_groups({
  #  'name' => 'admin',
  #});

  return $schema;
}

1;
