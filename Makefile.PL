use ExtUtils::MakeMaker;

my $ispell_bin = `which ispell-aspell`;
# The first match is for Solaris which.  The second is for 
# Linux which.
if (($ispell_bin =~ /no ispell-aspell/) || (length($ispell_bin) == 0)) {
    print "Could not find locate ispell-aspell.  Make sure that\n";
    print "the ispell-aspell program is installed in a directory\n";
    print "named in the PATH environment variable.\n";  
    exit 1;
}

WriteMakefile (NAME => 'Tk::SimpleFileSelect');

WriteMakefile(AUTHOR => 'Robert Kiesling, rkies@cpan.org' ,
	      NAME => 'tkispell',
	      VERSION_FROM => 'tkispell',
	      EXE_FILES => ['tkispell'] );
