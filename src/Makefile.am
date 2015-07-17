# include ../autotroll.mk # For QT moc objects
# Look at Autotroll for QT configuration via google (Do not use variables from Makefile.am, pick those that you need that are displayed during configure)

bin_SCRIPTS = run.sh
CLEANFILES = $(bin_SCRIPTS)

if DEBUG
AM_CXXFLAGS= -O0 -g3 -DDEBUG -fopenmp -std=c++11 -Werror -Wall -Wextra -Wconversion -pedantic-errors

#AM_CFLAGS= -O0 -g3 -DDEBUG -Werror -Wall -Wextra -Wconversion -pedantic-errors
else
AM_CXXFLAGS= -O3 -DNDEBUG -fopenmp -std=c++11 -Werror -Wall -Wextra -Wconversion -pedantic-errors
#AM_CFLAGS= -O3 -DNDEBUG -Werror -Wall -Wextra -Wconversion -pedantic-errors
endif

bin_PROGRAMS = \
	bare

bare_SOURCES = \
							main.cc

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


