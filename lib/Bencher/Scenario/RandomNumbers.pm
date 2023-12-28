package Bencher::Scenario::RandomNumbers;

use 5.010001;
use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

our $scenario = {
    summary => 'Benchmark some random number generation',
    participants => [
        {
            name => 'CORE::rand',
            code_template=>'CORE::rand()',
        },
        {
            fcall_template=>'Data::Entropy::Algorithms::rand()',
        },
        {
            fcall_template=>'Math::LogRand::LogRand(999,9999)',
        },
        {
            fcall_template=>'Math::Random::MT::rand()',
        },
        {
            fcall_template=>'Math::Random::LogUniform::logirand(1000,10000)',
        },
    ],
};

1;
# ABSTRACT:

=head1 BENCHMARK NOTES


=head1 SEE ALSO
