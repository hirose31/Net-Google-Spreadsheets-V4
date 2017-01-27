<div>
    <a href="https://travis-ci.org/hirose31/Net-Google-Spreadsheets-V4"><img src="https://travis-ci.org/hirose31/Net-Google-Spreadsheets-V4.png?branch=master" alt="Build Status" /></a>
    <a href="https://coveralls.io/r/hirose31/Net-Google-Spreadsheets-V4?branch=master"><img src="https://coveralls.io/repos/hirose31/Net-Google-Spreadsheets-V4/badge.png?branch=master" alt="Coverage Status" /></a>
</div>

# NAME

Net::Google::Spreadsheets::V4 - Google Sheets API v4 client

# SYNOPSIS

    use Net::Google::Spreadsheets::V4;
    
    my $gs = Net::Google::Spreadsheets::V4->new(
        client_id      => "YOUR_CLIENT_ID",
        client_secret  => "YOUR_CLIENT_SECRET",
        refresh_token  => "YOUR_REFRESH_TOKEN",
    
        spreadsheet_id => "YOUR_SPREADSHEET_ID",
    );
    
    my ($content, $res) = $gs->request(
        POST => ':batchUpdate',
        {
            requests => [ ... ],
        },
    );

See also examples/import.pl for more complex code.

# DESCRIPTION

Net::Google::Spreadsheets::V4 is Google Sheets API v4 client

# METHODS

## Class Methods

### **new**(%args:Hash) :Net::Google::Spreadsheets::V4

Creates and returns a new Net::Google::Spreadsheets::V4 client instance. Dies on errors.

%args is following:

- client\_id => Str
- client\_secret => Str
- refresh\_token => Str
- spreadsheet\_id => Str

## Instance Methods

### **get\_sheet**(title|index|sheet\_id => Str) :HashRef

Get `Sheet` object by title or index or sheet\_id.

### **clear\_sheet**(sheet\_id => Str)

Delete all data.

### **to\_csv**(Array)

Convert Array to CSV Str.

# AUTHOR

HIROSE Masaaki <hirose31@gmail.com>

# REPOSITORY

[https://github.com/hirose31/Net-Google-Spreadsheets-V4](https://github.com/hirose31/Net-Google-Spreadsheets-V4)

    git clone https://github.com/hirose31/Net-Google-Spreadsheets-V4.git

patches and collaborators are welcome.

# SEE ALSO

[https://developers.google.com/sheets/](https://developers.google.com/sheets/)

# COPYRIGHT

Copyright HIROSE Masaaki

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
