package Bencher::Scenario::AlgorithmDiff::Startup;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

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
