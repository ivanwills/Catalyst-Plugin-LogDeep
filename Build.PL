use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
	module_name         => 'Catalyst::Plugin::LogDeep',
	license             => 'perl',
	dist_author         => 'Ivan Wills <ivan.wills@gmail.com>',
	dist_version_from   => 'lib/Catalyst/Plugin/LogDeep.pm',
	requires            => {
		'Catalyst'  => '5.7',
		'Log::Deep' => '0.0.6',
	},
	build_requires => {
		'Test::More' => 0,
		'File::Spec' => 0,
	},
	add_to_cleanup     => [ 'Catalyst-Plugin-LogDeep-*' ],
	create_makefile_pl => 'traditional',
	create_license     => 1,
);

$builder->create_build_script();
