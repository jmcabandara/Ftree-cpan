use strict;
use warnings;
use utf8;

use FindBin qw($Bin);
use lib "$Bin/../lib";
use Test::More tests => 1;

require Ftree::FamilyTreeBase;
my $family_tree = Ftree::FamilyTreeBase->new();