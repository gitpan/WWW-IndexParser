# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl WWW-IndexParser.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';
use lib qw(../lib);
use Test::More tests => 3;

BEGIN { use_ok('WWW::IndexParser') };

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

my $url = "http://www.james.rcpt.to/misc/";
my @files = WWW::IndexParser->new(url => $url);
ok( @files,                           "fetched index from $url");
ok( $files[0]->filename eq '/',     "first entry from $url is parent directory /");
