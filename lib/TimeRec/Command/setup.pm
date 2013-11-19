package TimeRec::Command::setup;
use Mojo::Base 'Mojolicious::Command';

use Term::Prompt qw/prompt/;

has description => "Create the database for your TimeRec CMS application.\n";
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

  print "Database created! Run 'galileo daemon' to start the server.\n";
}

sub inject_sample_data {
  my $self = shift;
  my $schema = eval { $_[-1]->isa('TimeRec::DB::Schema') } ? pop() : $self->app->schema;

  my $user = shift or die "Must provide an administrative username";
  my $pass = shift or die "Must provide a password for $user";
  my $full = shift || "Administrator";

  $schema->deploy;

  my $admin = $schema->resultset('User')->create({
    name => $user,
    full => $full,
    password => $pass,
    is_author => 1,
    is_admin  => 1,
  });

  $schema->resultset('Page')->create({
    name      => 'home',
    title     => 'TimeRec CMS',
    html      => <<'HTML',
<h2>Welcome to your TimeRec CMS site!</h2>

<blockquote>
  <p>TimeRec Galilei was "an Italian physicist, mathematician, astronomer, and philosopher who played a major role in the Scientific Revolution." -- <a href="https://en.wikipedia.org/wiki/TimeRec_Galilei">Wikipedia</a> </p>
</blockquote>

<p>When he first turned the telescope to face Jupiter, he used modern technology to improve the world around him.</p>

<p>Like the great scientist it is named for, TimeRec CMS is not afraid to be very modern. Learn more about it on the <a href="/page/about">about</a> page.</p>

<p><img src="/portrait.jpg" alt="Portrait of TimeRec Galilei" title="" /></p>
HTML
    md        => <<'MARKDOWN',
##Welcome to your TimeRec CMS site!

> TimeRec Galilei was "an Italian physicist, mathematician, astronomer, and philosopher who played a major role in the Scientific Revolution." -- [Wikipedia](https://en.wikipedia.org/wiki/TimeRec_Galilei) 

When he first turned the telescope to face Jupiter, he used modern technology to improve the world around him.

Like the great scientist it is named for, TimeRec CMS is not afraid to be very modern. Learn more about it on the [about](/page/about) page.

![Portrait of TimeRec Galilei](/portrait.jpg)
MARKDOWN
    author_id => $admin->user_id,
  });

  my $about = $schema->resultset('Page')->create({
    name      => 'about',
    title     => 'About TimeRec',
    html      => <<'HTML',
<p>TimeRec CMS is built upon some great open source projects:</p>

<ul>
<li><a href="http://perl.org">Perl</a> - if you haven't looked at Perl lately, give it another try!</li>
<li><a href="http://mojolicio.us">Mojolicious</a> - a next generation web framework for the Perl programming language</li>
<li><a href="http://www.dbix-class.org/">DBIx::Class</a> - an extensible and flexible Object/Relational Mapper written in Perl</li>
<li><a href="http://code.google.com/p/pagedown/">PageDown</a> (Markdown engine) - the version of Attacklab's Showdown and WMD as used on Stack Overflow and the other Stack Exchange sites</li>
<li><a href="http://twitter.github.com/bootstrap">Bootstrap</a> - the beautiful CSS/JS library from Twitter</li>
<li><a href="http://jquery.com/">jQuery</a> - because everything uses jQuery</li>
<li><a href="http://wavded.github.com/humane-js/">HumaneJS</a> - A simple, modern, browser notification system</li>
</ul>

<p>TimeRec is developed by <a href="https://github.com/jberger">Joel Berger</a>. <a href="https://github.com/jberger/TimeRec">Fork it</a> on GitHub!</p>
HTML
    md        => <<'MARKDOWN',
TimeRec CMS is built upon some great open source projects:

* [Perl](http://perl.org) - if you haven't looked at Perl lately, give it another try!
* [Mojolicious](http://mojolicio.us) - a next generation web framework for the Perl programming language
* [DBIx::Class](http://www.dbix-class.org/) - an extensible and flexible Object/Relational Mapper written in Perl
* [PageDown](http://code.google.com/p/pagedown/) (Markdown engine) - the version of Attacklab's Showdown and WMD as used on Stack Overflow and the other Stack Exchange sites
* [Bootstrap](http://twitter.github.com/bootstrap) - the beautiful CSS/JS library from Twitter
* [jQuery](http://jquery.com/) - because everything uses jQuery
* [HumaneJS](http://wavded.github.com/humane-js/) - A simple, modern, browser notification system

TimeRec is developed by [Joel Berger](https://github.com/jberger). [Fork it](https://github.com/jberger/TimeRec) on GitHub!
MARKDOWN
    author_id => $admin->user_id,
  });

  $schema->resultset('Menu')->create({
    name => 'main',
    list => $json->encode( [ $about->page_id ] ), 
  });

  return $schema;
}

1;
