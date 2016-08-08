requires 'perl', '5.008001';
requires 'Mojolicious';
requires 'MojoX::Session';
requires 'Teng', '0.28';
requires 'Teng::Plugin::ResultSet';

on 'test' => sub {
    requires 'Test::More', '0.98';
};
