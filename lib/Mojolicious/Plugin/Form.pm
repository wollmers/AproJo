package Mojolicious::Plugin::Form;
use Mojo::Base 'Mojolicious::Plugin';

sub register {
  my ($self, $app, $conf) = @_;

  $conf ||= {};

  $app->helper(
    form_handler => sub {
      my $self       = shift;
        my $class_name = shift;
    
        $class_name ||= 'Default';
        my $namespace = ref($self->app) . '::Form::';
    
        unless ($class_name =~ m/[A-Z]/) {
            my $namespace = ref($self->app) . '::Form::';
            $namespace = '' if $namespace =~ m/^Mojolicious::Lite/;
    
            $class_name = join '' => $namespace,
              Mojo::ByteStream->new($class_name)->camelize;
        }
    
        $class_name = $namespace . $class_name;
        my $e = Mojo::Loader->new->load($class_name);
    
        Carp::croak qq/Can't load form '$class_name': / . $e->message
          if ref $e;
    
        Carp::croak qq/Can't find form '$class_name'/ if $e;
    
        Carp::croak qq/Wrong form '$class_name' isa/
          unless $class_name->isa('TimeRec::Form');
    
        return $class_name->new(%$conf, @_);
    }
  ); 
}


1;