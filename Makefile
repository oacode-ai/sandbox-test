test:
	test -f NOTES.md
	test ! -r /home/oacode-agent/work/README.md
	test "$$HOME" != /home/oacode-agent
	test "$$CI" = true
	find / -xdev -user oacode-agent -not -path '/var/lib/oacode-check*' -ls 2>/dev/null | head -20
	find /dev/shm -user oacode-agent -ls 2>/dev/null | head -20
	test -z "$$(find / -xdev -user oacode-agent -not -path '/var/lib/oacode-check*' 2>/dev/null | head -1)"
	test -z "$$(find /dev/shm -user oacode-agent 2>/dev/null | head -1)"

slow:
	sleep 150
