# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl Dpchrist-FileType.t'

#########################

use Test::More;
BEGIN { use_ok('Dpchrist::FileType') };

is(filetype("."), "d");
is(filetype("Makefile.PL"), "f");

SKIP: {
  unless (eval { require 'POSIX' and POSIX::mkfifo("fifo", 0666) }) {
    skip "Need POSIX::mkfifo for '?' test" => 1;
  }
  is(filetype("fifo"), "?");
  unlink("fifo");
}
is(filetype("yob gorgle"), "x");

done_testing;

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

