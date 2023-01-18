package Bencher::Scenario::Algorithm::Diff::Startup;

use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

our $scenario = {
    summary => 'Benchmark startup of Algorithm::Diff',
    module_startup => 1,
    participants => [
        {module => 'Algorithm::Diff'},
        {module => 'Algorithm::Diff::XS'},
        {module => 'Algorithm::LCSS'},
    ],
};

1;
# ABSTRACT:
