package TimeRec::Admin;
use Mojo::Base 'Mojolicious::Controller';

sub edit { shift->render }
sub list { shift->render }

sub save {
  my $self = shift;
  my $params = [$self->req->param()];
  
  my $table = $self->stash->{table};

  my $data = {};
  
  $data->{$_} = $self->req->param($_) ? $self->req->param($_) : 0 for ( @$params );

  my $rs = $self->schema->resultset($table);

  $rs->update_or_create(
    $data
  );
  $self->redirect_to('/admin/list/'. $table);
}

1;
