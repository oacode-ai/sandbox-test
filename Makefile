test:
	test -f NOTES.md
	test ! -r /home/oacode-agent/work/README.md
	test "$$HOME" != /home/oacode-agent
	test "$$CI" = true
