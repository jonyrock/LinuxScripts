#!/usr/bin/env perl

use strict;
use warnings;

use LWP::UserAgent;
use HTTP::Cookies;
use HTTP::Request;
use Proc::Daemon;
use File::Slurp;

my $action = $ARGV[0] ? lc($ARGV[0]) : '';

my $pid_file = '/tmp/obitwatch.pid';

if ($action eq 'stop' || $action eq 'kill') {
	kill('KILL', read_file($pid_file));
	exit;
}

Proc::Daemon::Init({'pid_file' => $pid_file});

my $ua = LWP::UserAgent->new();

$ua->cookie_jar(HTTP::Cookies->new());

while (sleep(5)) {
	my $response = request_and_refresh($ua, HTTP::Request->new('GET' => 'http://market-place.me/static/img/preloader.gif'));
	my $host = $response->request->uri->host;

	if ($host =~ /^([^.]+).+obit\.ru$/s) {
		$response = request_and_refresh($ua, HTTP::Request->new('GET' =>
	"http://access.wifi.obit.ru/login?username=74:e5:0b:e1:ea:e0\@$1.hspot&password=MACPASS&dst=http://$host/connected.php"
						));
	}
}

sub request_and_refresh {
	my ($ua, $request) = @_;

	my $response;

	do {
		$response = $ua->request($request);
	}
	while (
		($response->decoded_content =~ /<meta[^>]+http-equiv="refresh"[^>]+content="[^"]*?url=([^"]+)/) &&
		($request = HTTP::Request->new('GET' => $1))
	);

	return $response;
}
