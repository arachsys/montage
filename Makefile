DEBUGFS = debugfs
MKE2FS = mke2fs

8N70OS_.PGM: update.sh fix-*
	$(MKE2FS) -q -t ext2 -E root_owner=0:0 -F $@ 128k
	$(DEBUGFS) -w -R "write update.sh update.sh" $@ >/dev/null 2>&1
	$(DEBUGFS) -w -R "sif update.sh mode 0100755" $@ >/dev/null 2>&1
	$(DEBUGFS) -w -R "write fix-presets fix-presets" $@ >/dev/null 2>&1
	$(DEBUGFS) -w -R "sif fix-presets mode 0100755" $@ >/dev/null 2>&1

clean:
	rm -f 8N70OS_.PGM

.PHONY: clean
