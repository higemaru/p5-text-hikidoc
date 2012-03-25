#
# $Id: sup.pm,v 1.2 2009/02/26 15:06:38 oneroad Exp $
#
package Text::HikiDoc::Plugin::sup;

use strict;
use warnings;
use base 'Text::HikiDoc::Plugin';

our $VERSION = sprintf "%d.%03d", q$Revision: 1.2 $ =~ /(\d+)/g;

sub to_html {
    my $self = shift;
    my $str = shift || '';

    return '<sup>'.$str.'</sup>';
}

1;
