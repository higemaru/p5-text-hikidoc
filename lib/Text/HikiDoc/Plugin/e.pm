#
# $Id: e.pm,v 1.2 2009/02/26 15:05:51 oneroad Exp $
#
package Text::HikiDoc::Plugin::e;

use strict;
use warnings;
use base 'Text::HikiDoc::Plugin';

our $VERSION = sprintf "%d.%03d", q$Revision: 1.2 $ =~ /(\d+)/g;

sub to_html {
    my $self = shift;
    my $str = shift || '';

    if ( $str =~ /^(\d+)$/ ) {
        $str = '&#'.$str.';';
    }
    else {
        $str = '&'.$str.';';
    }

    return $str;
}

1;
