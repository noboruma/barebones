m4_include([m4/ax_prefix_config_h.m4])
AC_INIT([poject], [1.0], [email@domain.com])
AC_CONFIG_AUX_DIR([build-aux])
AC_CONFIG_MACRO_DIR([.])

AC_CONFIG_SRCDIR([src/main.cc])
AM_INIT_AUTOMAKE([-Wall -Werror foreign])

PKG_CHECK_MODULES([CHECK], [check >= 0.9.8])
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

#Generate scripts
AC_CONFIG_FILES([src/run.sh],[chmod +x src/run.sh])

# Check Library
AC_LANG_PUSH([C++])
AC_ARG_WITH(libstd,
  [--with-libstd=DCMTK_ROOT_PATH (path containing stdlib folder)],
  [AC_CHECK_HEADER($withval/include/stdio.h, # Check if lib is valid in given paths
                   [dcmtk_lib_dir=$withval/lib] [dcmtk_header_dir=$withval/include],
                   [AC_MSG_ERROR([stdlib not found])])],
  [AC_CHECK_HEADER(stdio.h,[],[AC_MSG_ERROR([stdlib not found])])]) # Check if lib is valid in global paths
AC_LANG_POP

# Check Qt
#AC_ARG_WITH(qt,[--with-qt=QT_ROOT_PATH (path containing qt folder)], [qt_header_dir=$withval/include]
#                                         [qt_lib_dir=$withval/lib]
#                                         [MOC=$withval/bin/moc], 
#[PKG_CHECK_MODULES([QT4], [QtCore QtGui >= 4.6.2], [
#  AC_CHECK_PROGS([MOC], [moc-qt4 moc], moc, `eval $PKG_CONFIG --variable=exec_prefix QtCore`/bin)
#  AC_CHECK_PROGS([RCC], rcc, rcc, `eval $PKG_CONFIG --variable=exec_prefix QtCore`/bin)
#  AC_CHECK_PROGS([UIC], [uic-qt4 uic], uic, `eval $PKG_CONFIG --variable=exec_prefix QtCore`/bin)
#], [AC_MSG_ERROR([Qt 4.6.2 library not found])
#])
#])
#AC_ARG_WITH(qt-lib,[--with-qt-lib=PATH], [qt_lib_dir=$withval], [])

# create library variables
STDLIB_HH="$dcmtk_header_dir"
STDLIB_LIB="$dcmtk_lib_dir"
#QT_CXX="$qt_header_dir"
#QT_LIB="$qt_lib_dir"

# export library variables
AC_SUBST([STDLIB_HH])
AC_SUBST([STDLIB_LIB])
#AC_SUBST([QT_CXX])
#AC_SUBST([QT_LIB])

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

AC_OUTPUT
