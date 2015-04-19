# NAME

AproJo - A time recording application based on Mojolicious

<div>

</div>

<a href='https://travis-ci.org/wollmers/AproJo'><img src='https://travis-ci.org/wollmers/AproJo.png' alt="AproJo" /></a>
<a href='https://coveralls.io/r/wollmers/AproJo?branch=master'><img src='https://coveralls.io/repos/wollmers/AproJo/badge.png?branch=master' alt='Coverage Status' /></a>
<a href='http://cpants.cpanauthors.org/dist/AproJo'><img src='http://cpants.cpanauthors.org/dist/AproJo.png' alt='Kwalitee Score' /></a>
<a href='http://badge.fury.io/pl/AproJo'><img src='https://badge.fury.io/pl/AproJo.svg' alt='CPAN version' height='18' /></a>

# SYNOPSIS

    $ aprojo setup
    $ aprojo daemon

# DESCRIPTION

[AproJo](https://metacpan.org/pod/AproJo) is a Perl web application.

# STATUS

[AproJo](https://metacpan.org/pod/AproJo) is still in pre-Alpha state. It still misses essential features to be useful in production.

# INSTALLATION

[AproJo](https://metacpan.org/pod/AproJo) uses well-tested and widely-used CPAN modules, so installation should be as simple as

    $ cpanm AproJo

when using [App::cpanminus](https://metacpan.org/pod/App::cpanminus). Of course you can use your favorite CPAN client or install manually by cloning the ["SOURCE REPOSITORY"](#source-repository).

# SETUP

## Environment

Although most of [AproJo](https://metacpan.org/pod/AproJo) is controlled by a configuration file, a few properties must be set before that file can be read. These properties are controlled by the following environment variables.

- `APROJO_HOME`

    This is the directory where [AproJo](https://metacpan.org/pod/AproJo) expects additional files. These include the configuration file and log files. The default value is the current working directory (`cwd`).

- `APROJO_CONFIG`

    This is the full path to a configuration file. The default is a file named `aprojo.conf` in the `APROJO_HOME` path, however this file need not actually exist, defaults may be used instead. This file need not be written by hand, it may be generated by the `aprojo config` command.

## The `aprojo` command line application

[AproJo](https://metacpan.org/pod/AproJo) installs a command line application, `aprojo`. It inherits from the [mojo](https://metacpan.org/pod/mojo) command, but it provides extra functions specifically for use with AproJo.

### config

    $ aprojo config [options]

This command writes a configuration file in your `APROJO_HOME` path. It uses the preset defaults for all values, except that it prompts for a secret. This can be any string, however stronger is better. You do not need to memorize it or remember it. This secret protects the cookies employed by AproJo from being tampered with on the client side.

[AproJo](https://metacpan.org/pod/AproJo) does not need to be configured, however it is recommended to do so to set your application's secret.

The `--force` option may be passed to overwrite any configuration file in the current working directory. The default is to die if such a configuration file is found.

### setup

    $ aprojo setup

This step is required. Run `aprojo setup` to setup a database. It will use the default DBI settings (SQLite) or whatever is setup in the `APROJO_CONFIG` configuration file.

# RUNNING THE APPLICATION

    $ aprojo daemon

After the database is has been setup, you can run `aprojo daemon` to start the server.

You may also use [morbo](https://metacpan.org/pod/morbo) (Mojolicious' development server) or [hypnotoad](https://metacpan.org/pod/hypnotoad) (Mojolicious' production server). You may even use any other server that Mojolicious supports, however for full functionality it must support websockets. When doing so you will need to know the full path to the `aprojo` application. A useful recipe might be

    $ hypnotoad `which aprojo`

where you may replace `hypnotoad` with your server of choice.

## Logging

Logging in [AproJo](https://metacpan.org/pod/AproJo) is the same as in [Mojolicious](https://metacpan.org/pod/Mojolicious::Lite#Logging). Messages will be printed to `STDERR` unless a directory named `log` exists in the `APROJO_HOME` path, in which case messages will be logged to a file in that directory.

# TECHNOLOGIES USED

- [Mojolicious](http://mojolicio.us) - a next generation web framework for the Perl programming language
- [DBIx::Class](http://www.dbix-class.org/) - an extensible and flexible Object/Relational Mapper written in Perl
- [Bootstrap](http://twitter.github.com/bootstrap) - the CSS/JS library from Twitter
- [jQuery](http://jquery.com/) - jQuery

# SEE ALSO

- [Contenticious](https://metacpan.org/pod/Contenticious) - File-based Markdown website application

# SOURCE REPOSITORY

[http://github.com/wollmers/AproJo](http://github.com/wollmers/AproJo)

# AUTHOR

Helmut Wollmersdorfer, <helmut.wollmersdorfer@gmail.com>

<div>

    <a href='http://cpants.cpanauthors.org/author/wollmers'><img src='http://cpants.cpanauthors.org/author/wollmers.png' alt='Kwalitee Score' /></a>
</div>

# COPYRIGHT AND LICENSE

Copyright (C) 2013-2015 by Helmut Wollmersdorfer

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
