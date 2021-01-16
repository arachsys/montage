DEBUGFS = debugfs
MKE2FS = mke2fs

8N70OS_.PGM: update.sh fix-* fixed/*
	$(MKE2FS) -q -t ext2 -E root_owner=0:0 -F $@ 144k
	for FILE in update.sh fix-*; do \
	  $(DEBUGFS) -w -R "write $$FILE $$FILE" $@; \
	  $(DEBUGFS) -w -R "sif $$FILE mode 0100755" $@; \
	done >/dev/null 2>&1
	for FILE in fixed/*; do \
	  $(DEBUGFS) -w -R "write $$FILE $${FILE##*/}" $@; \
	done >/dev/null 2>&1

clean:
	rm -f 8N70OS_.PGM

.PHONY: clean
