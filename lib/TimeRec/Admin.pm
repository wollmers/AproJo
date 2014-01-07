package TimeRec::Admin;
use Mojo::Base 'Mojolicious::Controller';

use Data::Dumper;

sub edit { shift->render }
sub list { shift->render }

sub change {}
sub show {
  my $self = shift;
  #my $table = $self->stash->{table};
  
  $self->render;
}

sub save {
  my $self = shift;
  my $params = [$self->req->param()];
  
  my $table = $self->stash->{table};
  
  my $form = $self->form_handler($table);
  $form->from_schema($self->schema,$table);

  my $data = {};
  
  $data->{$_} = $self->req->param($_) ? $self->req->param($_) : 0 for ( @$params );
  
  my @elements = @{$form->ordered_elements};
  
  my @checkboxes = grep { $form->elements->{$_}->{type} eq 'checkbox' } @elements;
  
  for my $param (@checkboxes) {
    $data->{$param} = (exists $data->{$param} && $data->{$param} eq 'on') ? 1 : 0;   
  }

  my $rs = $self->schema->resultset($table);
  $rs->update_or_create($data);
  
  $self->redirect_to('/admin/show/'. $table);
}

1;
