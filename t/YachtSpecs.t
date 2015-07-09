#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use DDG::Test::Spice;

spice is_cached => 1;

ddg_spice_test(
    [qw( DDG::Spice::YachtSpecs)],
    # At a minimum, be sure to include tests for all:
    # - primary_example_queries
    # - secondary_example_queries
    'yacht maluhea' => test_spice(
        '/js/spice/yacht_specs/maluhea',
        call_type => 'include',
        caller => 'DDG::Spice::YachtSpecs'
    ),
    # Try to include some examples of queries on which it might
    # appear that your answer will trigger, but does not.
    'custom line yacht maluhea', 'private yacht maluhea' => undef,
);

done_testing;

