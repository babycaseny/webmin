#!/usr/local/bin/perl
# Write an actions log for a login

BEGIN { push(@INC, ".."); };
use WebminCore;

&init_config();
($username, $sid, $remoteip) = @ARGV;
if ($username && $sid && $remoteip) {
	$WebminCore::remote_user = $remote_user = $username;
	$main::session_id = $sid;
	$0 = "miniserv.pl";
	&webmin_log("login", undef, undef, undef, "global", undef,
		    undef, $remoteip);
	}
