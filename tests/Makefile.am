## Process this file with automake to produce Makefile.in
AM_CPPFLAGS = -I$(srcdir)/../src $(OTHER_CPPFLAGS) -I@STDLIB_HH@ -std=c++11 -DCHECK

check_PROGRAMS = check_null
AM_DEFAULT_SOURCE_EXT = .cc

#LDADD = $(abs_builddir)/../src/external_lib.a

TESTS = $(check_PROGRAMS)
