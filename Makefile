#
# Orcania Framework
#
# Makefile used to build all programs
#
# Copyright 2017 Nicolas Mora <mail@babelouest.org>
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the MIT License
#
# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
#

LIBORCANIA_LOCATION=./src
TESTS_LOCATION=./test

all: shared static

shared:
	$(MAKE) -C $(LIBORCANIA_LOCATION) $*

static:
	$(MAKE) -C $(LIBORCANIA_LOCATION) static $*

debug:
	$(MAKE) -C $(LIBORCANIA_LOCATION) debug $*

clean:
	$(MAKE) -C $(LIBORCANIA_LOCATION) clean
	$(MAKE) -C $(TESTS_LOCATION) clean

check:
	$(MAKE) -C $(LIBORCANIA_LOCATION) debug $*
	$(MAKE) -C $(TESTS_LOCATION) test $*

install:
	$(MAKE) -C $(LIBORCANIA_LOCATION) install static-install $*

uninstall:
	$(MAKE) -C $(LIBORCANIA_LOCATION) uninstall $*

doxygen:
	doxygen doc/doxygen.cfg

release: shared static
