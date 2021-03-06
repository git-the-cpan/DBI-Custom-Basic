use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'DBI::Custom::Basic',
    license             => 'perl',
    dist_author         => 'Yuki Kimoto <kimoto.yuki@gmail.com>',
    dist_version_from   => 'lib/DBI/Custom/Basic.pm',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'DBI::Custom' => 0.0101
    },
    recommends => {
        'Time::Piece' => 1.15
    },
    add_to_cleanup      => [ 'DBI-Custom-Basic-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
