#!/usr/bin/perl

use 5.006;

use strict;
use warnings;
no  warnings 'syntax';

use Test::More 0.88;

our $r = eval "require Test::NoWarnings; 1";

BEGIN {
    use_ok ('Bundle::Regexp::Common510') or
        BAIL_OUT ("Loading of 'Bundle::Regexp::Common510' failed");
}

ok defined $Bundle::Regexp::Common510::VERSION, "VERSION is set";

Test::NoWarnings::had_no_warnings () if $r;

done_testing;
