use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name       => 'Catalyst::Plugin::LogDeep',
    license           => 'perl',
    dist_author       => 'Ivan Wills <ivan.wills@gmail.com>',
    dist_version_from => 'lib/Catalyst/Plugin/LogDeep.pm',
    requires          => {
        'perl'                             => 5.010,
        'Catalyst'                         => '5.7',
        'Log::Deep'                        => '0.0.6',
        'Catalyst::Plugin::ConfigLoader'   => 0,
        'Catalyst::Plugin::Static::Simple' => 0,
        'Class::C3::Adopt::NEXT'           => 0,
        'parent'                           => 0,
    },
    build_requires => {
        'Test::More' => 0,
        'File::Spec' => 0,
    },
    recommends => {
        'Test::Spelling'     => 0,
        'Test::Perl::Critic' => 0,
        'Test::Kwalitee'     => 0,
        'Pod::Coverage'      => 0,
    },
    add_to_cleanup     => [ 'Catalyst-Plugin-LogDeep-*' ],
    create_makefile_pl => 'traditional',
    create_license     => 1,
    meta_merge         => {
        resources => {
            repository => 'git://github.com/ivanwills/Catalyst-Plugin-LogDeep.git',
            bugtracker => 'http://rt.cpan.org/NoAuth/Bugs.html?Dist=Catalyst-Plugin-LogDeep',
        },
    },
);

$builder->create_build_script();
