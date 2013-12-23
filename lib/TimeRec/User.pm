package TimeRec::User;
use Mojo::Base 'Mojolicious::Controller';

use Data::Dumper;

sub login {
  my $self = shift;
  my $name = $self->param('username');
  my $pass = $self->param('password');
  my $from = $self->param('from');

print STDERR 'login user: ',$name,"\n";

  my $schema = $self->schema;

  my $columns_info = $schema->source('User')->columns_info([$schema->source('User')->columns]);
 
  print STDERR 'source user: ',Dumper($columns_info),"\n";
  
  my $primary_columns = [$schema->source('User')->primary_columns];
  
  print STDERR '$primary_columns: ',Dumper($primary_columns),"\n";
 
  my $user_rel = [$schema->source('User')->relationships];
 
  print STDERR '$user_rel: ',Dumper($user_rel),"\n";
  
  my $role_rel_info = $schema->source('User')->relationship_info('global_role');
  
  print STDERR '$role_rel_info: ',Dumper($role_rel_info),"\n";
  
  my $group_name = $schema->resultset('User')->single({name => $name})->global_role()->name;
  
  print STDERR '$group_name: ',Dumper($group_name),"\n";

  my $user = $schema->resultset('User')->single({name => $name});
  if ($user and $user->password eq $pass) {
    $self->flash( onload_message => "Welcome Back!" );
    $self->session->{id} = $user->user_id;
    $self->session->{username} = $name;
    print STDERR 'login OK, user_id: ',$user->user_id,"\n";
  } else {
    $self->flash( onload_message => "Sorry try again" );
  }
  #$self->redirect_to( $from );
  $self->redirect_to( "/" );
}

sub logout {
  my $self = shift;
  $self->session( expires => 1 );
  $self->redirect_to( $self->home_page );
}

1;

