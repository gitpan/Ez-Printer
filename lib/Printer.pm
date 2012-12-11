#!/usr/bin/env perl
package Ez::Printer;
use strict;
use warnings;

use Exporter;
use vars qw(@ISA @EXPORT);

our $VERSION = '0.0.3';
@ISA = qw(Exporter);
@EXPORT = qw(puts putc);


sub puts
{
    while ( @_ )
    {
	print "$_[0]";
	shift @_;
    }
    return bless {};
}

sub putc
{
    if ( @_ )
    {
       chomp( my $size = length($_[0]));
       if ( $size == 1 ) 
       {
	   print $_[0];
       }
       else
       {
	   exit;
       }
   }
   return bless {};
}

