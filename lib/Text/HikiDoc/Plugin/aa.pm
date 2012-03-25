#
# $Id: aa.pm,v 1.2 2009/02/26 15:05:12 oneroad Exp $
#
package Text::HikiDoc::Plugin::aa;

use strict;
use warnings;
use base 'Text::HikiDoc::Plugin';

our $VERSION = sprintf "%d.%03d", q$Revision: 1.2 $ =~ /(\d+)/g;

sub to_html {
    my $self = shift;
    my $str = @_ ? join("\n",@_) : '';

#    $str =~ s/\n/<br$self->{empty_element_suffix}\n/g;
#    return '<div class="ascii-art">'.$str.'</div>';
    return '<pre class="ascii-art">'.$str.'</pre>';
}

1;
