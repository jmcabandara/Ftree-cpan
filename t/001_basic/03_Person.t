use strict;
use warnings;
use utf8;

use FindBin qw($Bin);
use lib "$Bin/../lib";
use Test::More tests => 1;

require Ftree::Person;
my $family_tree = Ftree::Person->new(1);
isa_ok $family_tree, "Ftree::Person", "Ftree::Person->new";