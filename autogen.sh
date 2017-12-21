#!/bin/sh

for p in `cat patch/patch.list`; do
    if test -f patch/${p}; then
	patch --no-backup-if-mismatch -p1 < patch/${p}
    fi
done
autoreconf -if

