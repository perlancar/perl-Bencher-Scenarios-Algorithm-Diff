package Bencher::Scenario::Algorithm::Diff::Diff;

use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

our $scenario = {
    summary => "Benchmark Algorithm::Diff's diff(), sdiff(), compact_diff(), LCS(), LCSidx(), LCS_length()",
    participants => [
        {fcall_template=>'Algorithm::Diff::diff(<ary1>, <ary2>)'},
        {fcall_template=>'Algorithm::Diff::sdiff(<ary1>, <ary2>)'},
        {fcall_template=>'Algorithm::Diff::compact_diff(<ary1>, <ary2>)'},
        {fcall_template=>'Algorithm::Diff::LCS(<ary1>, <ary2>)'},
        {fcall_template=>'Algorithm::Diff::LCSidx(<ary1>, <ary2>)'},
        {fcall_template=>'Algorithm::Diff::LCS_length(<ary1>, <ary2>)'},
        {fcall_template=>'Algorithm::Diff::XS::compact_diff(<ary1>, <ary2>)'},
        {fcall_template=>'Algorithm::Diff::XS::LCSidx(<ary1>, <ary2>)'},
    ],
    datasets => [
        {name=>'empty'        , args=>{ary1=>[], ary2=>[]}},
        {name=>'insert 1x1'   , args=>{ary1=>[], ary2=>[1]}},
        {name=>'insert 1x10'  , args=>{ary1=>[], ary2=>[1..10]}},
        {name=>'insert 10x1'  , args=>{ary1=>[1..10], ary2=>[map {$_,$_+10} 1..10]}},
        {name=>'delete 1x1'   , args=>{ary1=>[1], ary2=>[]}},
        {name=>'delete 1x10'  , args=>{ary1=>[1..10], ary2=>[]}},
        {name=>'delete 10x1'  , args=>{ary1=>[map {$_,$_+10} 1..10], ary2=>[1..10]}},

        {name=>'insert+delete 150x1'  , args=>{ary1=>[qw/a b d/ x 50], ary2=>[qw/b a d c/ x 50]}},
    ],
};

1;
# ABSTRACT:
