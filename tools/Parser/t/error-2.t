#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 10;

use_ok 'HOP::Stream', qw( drop list_to_stream );
use_ok 'ParserGenerator';

unlink 'Parser.pm';
my $warn; $SIG{__WARN__} = sub {$warn = shift};

isa_ok my $g = ParserGenerator->new(), 'ParserGenerator';
$g->write('Parser', 'Parser.pm');
use_ok 'Parser';

my $token = undef; my $message = "err1\n";

eval {Parser::error_at($token, $message)};
is $@, "Error: err1 at EOF\n", "undef token";

Parser::warning_at($token, $message);
is $warn, "Warning: err1 at EOF\n", "undef token";

$token = [NUMBER => 10, undef];

eval {Parser::error_at($token, $message)};
is $@, "Error: err1 at NUMBER\n", "undef token";

Parser::warning_at($token, $message);
is $warn, "Warning: err1 at NUMBER\n", "undef token";

$token = [NUMBER => 10, ["text\n", 3, "f1.asm"]];

eval {Parser::error_at($token, $message)};
is $@, "f1.asm 3: Error: err1 at NUMBER\n", "undef token";

Parser::warning_at($token, $message);
is $warn, "f1.asm 3: Warning: err1 at NUMBER\n", "undef token";

# clean-up
unlink 'Parser.pm' unless $ENV{DEBUG};
