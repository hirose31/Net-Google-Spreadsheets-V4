use strict;
use Test::More;

require Net::Google::Spreadsheets::V4;
Net::Google::Spreadsheets::V4->import;
note("new");
my $obj = new_ok("Net::Google::Spreadsheets::V4");

# diag explain $obj

done_testing;
