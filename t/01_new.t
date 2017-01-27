use strict;
use Test::More;

require Net::Google::Spreadsheets::V4;
Net::Google::Spreadsheets::V4->import;
note("new");

# cannot test because new requires the valid access token

# my $obj = new_ok("Net::Google::Spreadsheets::V4" => [
#     client_id      => 'dummy',
#     client_secret  => 'dummy',
#     refresh_token  => 'dummy',
#     spreadsheet_id => 'dummy',
# ]);

# diag explain $obj

done_testing;
