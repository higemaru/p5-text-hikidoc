#
# $Id: br.pm,v 1.5 2009/02/26 15:05:37 oneroad Exp $
#
package Text::HikiDoc::Plugin::br;

use strict;
use warnings;
use base 'Text::HikiDoc::Plugin';

our $VERSION = sprintf "%d.%03d", q$Revision: 1.5 $ =~ /(\d+)/g;

sub to_html {
    my $self = shift;
    my $num = shift || 1;
    my $style = shift || '';

    my $ret = '<br';
    $ret .= ' style="'.$style.'"' if $style;
    $ret .= $self->{empty_element_suffix} || ' />';

    return $ret x $num;
}

1;
