use strict;
use warnings;
use utf8;

use FindBin qw($Bin);
use lib "$Bin/../lib";
use Test::More tests => 1;

require Ftree::FamilyTreeInfo;
my $family_tree = Ftree::FamilyTreeInfo->new();

