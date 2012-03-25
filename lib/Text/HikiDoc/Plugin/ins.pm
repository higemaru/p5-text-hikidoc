#
# $Id: ins.pm,v 1.2 2009/02/26 15:06:08 oneroad Exp $
#
package Text::HikiDoc::Plugin::ins;

use strict;
use warnings;
use base 'Text::HikiDoc::Plugin';

our $VERSION = sprintf "%d.%03d", q$Revision: 1.2 $ =~ /(\d+)/g;

sub to_html {
    my $self = shift;
    my $str = @_ ? join("\n",@_) : '';

    $str =~ s/\n/<br$self->{empty_element_suffix}\n/g if ($self->{br_mode} eq 'true');

    return '<ins>'.$str.'</ins>';
}

1;
