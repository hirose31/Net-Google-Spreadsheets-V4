# -*- mode: cperl -*-

requires 'perl', '5.008005';

# requires 'Foo', '== 0.1';        # specific version
# requires 'Foo', '0.1';           # minimum
# requires 'Bar', '>= 0.1, < 0.4'; # min-max

# develop   = author_requires
# configure = configure_requires
# build     = build_requires
# runtime   = requires (default)
# test      = test_requires

on configure => sub {
    requires 'Module::Build::Tiny', '0.030';
};

on develop => sub {
    requires 'App::scan_prereqs_cpanfile', '0.09';
    requires 'Pod::Wordlist';
    requires 'Test::Fixme';
    requires 'Test::Kwalitee';
    requires 'Test::Spelling', '0.12';
};

on test => sub {
    requires 'Test::More', '0.88';
};
