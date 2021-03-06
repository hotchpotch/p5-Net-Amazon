use 5.006;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'Net::Amazon',
    'VERSION_FROM'	=> 'lib/Net/Amazon.pm', # finds $VERSION
    'PREREQ_PM'		=> { Log::Log4perl  => 0.30,
                             XML::Simple    => 2.08,
                             LWP::UserAgent => 2,
                             Time::HiRes    => 1,
                             Data::Dumper   => 0,
                             URI            => 0,
                             Digest::SHA    => 0,
                             URI::Escape    => 0,
                           }, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM => 'lib/Net/Amazon.pm', # retrieve abstract from module
       AUTHOR     => 'Mike <m@perlmeister.com>') : ()),
);
