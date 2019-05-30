use strict;
use warnings;
use utf8;

my $no=<>;

my @ans;

for (my $i = 0; $i < $no; $i++) {
    my @input = split(/ /, <>);
    $ans[$i] = +{ 'city' => $input[0], 'point' => $input[1] };
}
my @score_sort_list_map = sort {$a->{"point"} <=> $b->{"point"}} @ans;
print $score_sort_list_map[0]->{point};
