#######################################################
#
# Family Tree generation program, v2.0
# Written by Ferenc Bodon and Simon Ward, March 2000 (simonward.com)
# Copyright (C) 2000 Ferenc Bodon, Simon K Ward
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# For a copy of the GNU General Public License, visit
# http://www.gnu.org or write to the Free Software Foundation, Inc.,
# 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
#
#######################################################

package Ftree::Exporters::Serializer;
use strict;
use warnings;
use version; our $VERSION = qv('2.3.32');
use Storable;
use Params::Validate qw(:all);
use Sub::Exporter -setup => { exports => [ qw(export) ] };

sub export {
  my ($filename, $family_tree_data) = validate_pos(@_, {type => SCALAR}, {type => HASHREF});
  Storable::nstore $family_tree_data, $filename;
}

1;
