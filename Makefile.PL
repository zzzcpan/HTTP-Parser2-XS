
use 5.008002;
use ExtUtils::MakeMaker;

WriteMakefile(
    dist	 => {
	             PREOP	=> 'pod2text lib/HTTP/Parser2/XS.pm | tee README >$(DISTVNAME)/README; chmod -R u=rwX,go=rX . ;',
	             COMPRESS	=> 'gzip -9v',
	             SUFFIX	=> '.gz',
	            },
    NAME         => 'HTTP::Parser2::XS',
    VERSION_FROM => 'lib/HTTP/Parser2/XS.pm',
    PREREQ_PM    => {
        'Test::More' => 0,
        # e.g., Module::Name => 1.1
    },
#     EXE_FILES    => [""],
    INC          => '-I.', # e.g., '-I. -I/usr/include/other'
    DEFINE       => '', # e.g., '-DHAVE_SOMETHING'
    OBJECT       => '$(O_FILES)', # link all the C files too
);

