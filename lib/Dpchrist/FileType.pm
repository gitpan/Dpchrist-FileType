package Dpchrist::FileType;

use 5.010001;
use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter);
# This allows declaration	use Dpchrist::FileType ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw( filetype ) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw( filetype );

our $VERSION = '0.10';

sub filetype {
  my ($file) = @_;
  return -f $file ? "f" :
         -d $file ? "d" :
         -e $file ? "?" :
                    "x" ;
}

1;

__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Dpchrist::FileType - Perl extension for determining file type

=head1 SYNOPSIS

  use Dpchrist::FileType;

  if (filetype($file) eq "f") {
    print "'$file' is a plain file\n";
  } elsif (filetype($file) eq "d") {
    print "'$file' is a directory\n";
  }

=head1 DESCRIPTION

Blah blah blah.

=head2 EXPORT

None by default.

=head1 SEE ALSO

=head1 AUTHOR

Mark Dominus, E<lt>mjd@plover.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2010 by Mark Dominus.  Unauthorized distribution
will be punished to the full extent of the law.

=cut
