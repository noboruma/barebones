#m4_include([m4/ax_prefix_config_h.m4])
  AC_INIT([poject],
          m4_esyscmd_s(echo $(git describe --tags)$(git status --porcelain | awk '{if ($1 == "M") {print "-dirty";exit}}')),
          [email@domain.com])
AC_CONFIG_AUX_DIR([build-aux])
AC_CONFIG_MACRO_DIR([.])

AC_CONFIG_SRCDIR([src/main.cc])
AM_INIT_AUTOMAKE([-Wall -Werror foreign])

#PKG_CHECK_MODULES([CHECK], [check >= 0.9.8])
#check/Makefile

# enable library creation
AC_PROG_RANLIB

# Checks for programs
AC_PROG_CXX
AC_PROG_CC
AC_CONFIG_HEADERS([config.h])

AX_PREFIX_CONFIG_H([ax_config.h])
AC_CONFIG_FILES([
  Makefile
  src/Makefile
  tests/Makefile
])

#================================ SCRIPT PART ===

#Generate scripts
AC_CONFIG_FILES([src/run.sh],[chmod +x src/run.sh])

#================================ EXTERNAL LIB PART ===
# Check Library
AC_LANG_PUSH([C++])
AC_ARG_WITH(libstd,
  [--with-libstd=LIBSTD_ROOT_PATH (path containing libstd folder)],
  [AC_CHECK_HEADER($withval/include/stdio.h, # Check if lib is valid in given paths
                   [libstd_lib_dir=$withval/lib] [libstd_header_dir=$withval/include],
                   [AC_MSG_ERROR([libstd not found])])],
  [AC_CHECK_HEADER(stdio.h,
                   [libstd_lib_dir=/usr/lib] [libstd_header_dir=/usr/include],
                   [AC_MSG_ERROR([libstd not found])])]) # Check if lib is valid in global paths
AC_LANG_POP

# Check Qt
#AT_WITH_QT

# export library variables
AC_SUBST([STDLIB_HH], "$libstd_header_dir")
AC_SUBST([STDLIB_LIB], "$libstd_lib_dir")

#================================ DEBUG PART ===
## Add --enable-debug
AC_ARG_ENABLE(debug,
AS_HELP_STRING([--enable-debug],
               [enable debugging, default: no]),
[case "${enableval}" in
             yes) debug=true ;;
             no)  debug=false ;;
             *)   AC_MSG_ERROR([bad value ${enableval} for --enable-debug]) ;;
esac],
[debug=false])

AM_CONDITIONAL(DEBUG, test x"$debug" = x"true")

#================================ CONFIG PART ===

# Add to config.h
AC_DEFINE_UNQUOTED([RES_PATH], [`cd $srcdir && pwd`/res], [res path])

AC_OUTPUT
