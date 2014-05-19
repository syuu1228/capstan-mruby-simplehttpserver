# Copyright (C) 2014 Cloudius Systems, Ltd.
#
# This work is open source software, licensed under the terms of the
# BSD license as described in the LICENSE file in the top-level directory.

TARGET = mruby

quiet = $(if $V, $1, @echo " $2"; $1)
very-quiet = $(if $V, $1, @$1)

all: mruby.so mirb.so

mruby.so mirb.so:
	./GET

clean:
	$(call quiet, rm -rf upstream *.so, CLEAN)
