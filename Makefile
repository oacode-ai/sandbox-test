test:
	test -f NOTES.md
	test ! -r /home/oacode-agent/work/README.md
	test "$$HOME" != /home/oacode-agent
	test "$$CI" = true
	find / -xdev -user oacode-agent -not -path '/var/lib/oacode-check*' -not -path /tmp -not -path /var/tmp -not -path /run -ls 2>/dev/null | head -20
	test -z "$$(find / -xdev -user oacode-agent -not -path '/var/lib/oacode-check*' -not -path /tmp -not -path /var/tmp -not -path /run 2>/dev/null | head -1)"
	test -z "$$(find /dev/shm -user oacode-agent 2>/dev/null | head -1)"

slow:
	sleep 150
