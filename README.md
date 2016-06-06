# NAME

MojoX::Session::Store::Teng - Teng Store for MojoX::Session

# SYNOPSIS

    CREATE TABLE session (
        sid          VARCHAR(40) PRIMARY KEY,
        data         TEXT,
        expires      INTEGER UNSIGNED NOT NULL,
        UNIQUE(sid)
    );

    package MyDB;
    use parent 'Teng';
    __PACKAGE__->load_plugin('ResultSet');

    package main;
    my $db = MyDB->new(...);
    my $rs = $db->resultset('session');
    my $session = MojoX::Session->new(
        store => MojoX::Session::Store::Teng->new(resultset => $rs),
        ...
    );

# DESCRIPTION

[MojoX::Session::Store::Teng](https://metacpan.org/pod/MojoX::Session::Store::Teng) is a store for [MojoX::Session](https://metacpan.org/pod/MojoX::Session) that stores a
session in a database using Teng.

forked by [MojoX::Session::Store::Dbic](https://metacpan.org/pod/MojoX::Session::Store::Dbic)

# ATTRIBUTES

[MojoX::Session::Store::Teng](https://metacpan.org/pod/MojoX::Session::Store::Teng) implements the following attributes.

## `resultset`

    my $resultset = $store->resultset;
    $resultset    = $store->resultset(resultset);

Get and set Teng::ResultSet object.

## `sid_column`

Session id column name. Default is 'sid'.

## `expires_column`

Expires column name. Default is 'expires'.

## `data_column`

Data column name. Default is 'data'.

# METHODS

[MojoX::Session::Store::Teng](https://metacpan.org/pod/MojoX::Session::Store::Teng) inherits all methods from
[MojoX::Session::Store](https://metacpan.org/pod/MojoX::Session::Store).

## `create`

Insert session to database.

## `update`

Update session in database.

## `load`

Load session from database.

## `delete`

Delete session from database.

# SEE ALSO

[Teng](https://metacpan.org/pod/Teng)

[Teng::ResultSet](https://metacpan.org/pod/Teng::ResultSet)

[Mojolicious::Plugin::Session](https://metacpan.org/pod/Mojolicious::Plugin::Session)

[MojoX::Session](https://metacpan.org/pod/MojoX::Session)

[Mojolicious](https://metacpan.org/pod/Mojolicious)

## Fork

This module was forked from [MojoX::Session::Store::Dbic](https://metacpan.org/pod/MojoX::Session::Store::Dbic)

# LICENSE

Copyright (C) clicktx.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

clicktx <clicktx@gmail.com>
