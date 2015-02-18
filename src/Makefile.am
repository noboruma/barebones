# include ../moc.mk # For QT moc objects

bin_SCRIPTS = run.sh
CLEANFILES = $(bin_SCRIPTS)

if DEBUG
AM_CXXFLAGS= -O0 -g3 -DDEBUG -fopenmp -std=c++11
AM_CFLAGS= -O0 -g3 -DDEBUG -Wall -Wextra -Wconversion -pedantic-errors
else
AM_CXXFLAGS= -O3 -DNDEBUG -fopenmp -std=c++11
AM_CFLAGS= -O3 -DNDEBUG -Wall -Wextra -Wconversion -pedantic-errors
endif

bin_PROGRAMS = \
	bare

#bare_MOC_FILES = moc_qtfile.cc
#qtfile.cc: moc_qtfile.cc

bare_SOURCES = \
							main.cc
#							qtfile.cc

#noinst_LIBRARIES = external_lib.a
#external_lib_a_SOURCES = ext_file.c

include_HEADERS =


#bare_LDADD = external_lib.a

# header part
AM_CPPFLAGS = -I@STDLIB_HH@ 
# linking part
AM_LDFLAGS  = -L@STDLIB_LIB@ -Wl,-Bstatic -Wl,-Bdynamic -pthread -lc

# Linking end of command
# LDADD = -lstd

CXXFLAGS = -Wall -Werror

# Clean all, add clean-moc-extra for moc
clean-local:
