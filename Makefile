# Makefile automatically generated, do not edit!
# This output (only this Makefile) is Public Domain.
#
#@MD5TINOIGN@ Creation date: Fri Nov 27 22:22:24 PST 2015
#
# This file is based on following files:
#@MD5TINOIGN@ 1: Makefile.tino
#@MD5TINOIGN@ 2: /Users/joe/Developer/ddrescue-verify/tino/Makefile.proto

#
#@MD5TINOIGN@ included: Makefile.tino
#

      PROGS=ddrescue-verify
       OBJS=

 INSTALLBIN=
INSTALLSBIN=
 INSTALLLIB=
 INSTALLETC=
 INSTALLMAN=
INSTALLSMAN=
 INSTALLINF=
INSTALLSINF=

 ADD_CFLAGS=-Wno-string-plus-int
ADD_CCFLAGS=
ADD_LDFLAGS=
 ADD_LDLIBS=
      CLEAN=
  CLEANDIRS=
  DISTCLEAN=
   TINOCOPY=

INSTALLPATH=/usr/local

#
#@MD5TINOIGN@ included: /Users/joe/Developer/ddrescue-verify/tino/Makefile.proto
#

# Automatically generated from "PROGS" above
      PROG1=ddrescue-verify

# Override those in Makefile.tino if needed:
 STD_CFLAGS=-g -Wall -Wno-unused-function -O3
 STD_CCFLAGS=-g -Wall -Wno-unused-function -O3
STD_LDFLAGS=
 STD_LDLIBS=
    BINPATH=bin
   SBINPATH=sbin
    LIBPATH=lib
    ETCPATH=etc
    MANPATH=man
   SMANPATH=share/man
    INFPATH=info
   SINFPATH=share/info

# Except for the compiler generated dependencies at the end
# from here no changes shall be needed.

     CFLAGS=$(DBG_FLAGS) $(DBG_CFLAGS) $(STD_CFLAGS) $(ADD_CFLAGS) -I"$(HERE)"
   CXXFLAGS=$(DBG_CCFLAGS) $(STD_CCFLAGS) $(ADD_CCFLAGS) -I"$(HERE)"
    LDFLAGS=$(DBG_LDFLAGS) $(STD_LDFLAGS) $(ADD_LDFLAGS)
     LDLIBS=$(DBG_LDLIBS) $(STD_LDLIBS) $(ADD_LDLIBS)

VERSIONFILE=$(PROG1)_version
VERSIONNAME=$(VERSIONFILE)
 VERSIONEXT=h
     COMMON=			\
		$(VERSIONFILE).$(VERSIONEXT)	\
		$(TINOINC)	\
		$(TINOLIB)	\

       GAWK=awk
      TOUCH=touch

         CP=cp
      STRIP=strip

       HERE=$(PWD)

# Semi-automatically generated for CygWin (*.exe)

  PROGS_EXE=			\
		$(PROG1).exe	\

.PHONY: all static install it clean distclean dist tar diff always

# Targets considered to work for all systems with GNU MAKE and GNU AWK

all:	$(SUBDIRS) $(PROGS)

test:	all Tests
	$(PWD)/tino/Makefile-tests.sh Tests

# To use this you need to do:
#	ln -s tinolib/diet .
#	make static
# This is experimental.

static:
	[ -f diet.distignore~ ] || $(MAKE) clean
	$(TOUCH) diet.distignore~
	[ ! -d diet ] || $(MAKE) -C diet diet
	[ ! -d diet ] || $(MAKE) CC="$(PWD)/diet/tinodiet.sh --tinodiet"
	[ -d diet ] || $(MAKE) CC="$(PWD)/tino/Makefile-diet.sh --tinodiet"

Makefile:	Makefile.md5
	$(TOUCH) Makefile

Makefile.md5:	$(VERSIONFILE).$(VERSIONEXT) always
	@$(GAWK) -vHERE="$(HERE)" -vMAKE="$(MAKE)" -vTINOCOPY="$(TINOCOPY)" 'BEGIN { \
	if ((getline < "tino/Makefile")>0 && \
	    (getline < "tino/Makefile.proto")>0 && \
	    (getline < "tino/Makefile.awk")>-1) \
		system(MAKE " -C tino tino HERE='\''" HERE "'\'' TINOCOPY='\''" TINOCOPY "'\''"); \
	else if ((getline < "Makefile.md5")<0)	 \
		printf "" >"Makefile.md5"; \
	}'

$(VERSIONFILE).h:	VERSION
	$(GAWK) -vPROG="$(VERSIONNAME)" '{ gsub(/-/,"_",PROG); print "#define " toupper(PROG) " \"" $$0 "\"" }' VERSION > "$(VERSIONFILE).h"

$(VERSIONFILE).py:	VERSION
	$(GAWK) -vPROG="$(VERSIONNAME)" '{ gsub(/-/,"_",PROG); print "#"; print ""; print toupper(PROG) "=\"" $$0 "\"" }' VERSION > "$(VERSIONFILE).py"

# Poor man's install
# Generated from PROGS and INSTALL* above

install:
	$(RM) "$(INSTALLPATH)/bin/$(PROG1)"
	$(CP) "$(PROG1)" "$(INSTALLPATH)/bin/$(PROG1)"
	$(STRIP) "$(INSTALLPATH)/bin/$(PROG1)"

# Special targets considered to work for all unix like systems
# like CygWin

it:	all
	[ ".$(PWD)" != ".$(HERE)" ] || [ -f VERSION ] || \
	{ UP="`dirname "$(HERE)"`"; $(MAKE) -C"$$UP" it HERE="$$UP"; }

clean:
	$(RM) *.o *.d *~ .*~ */*~ $(CLEAN)
	-$(MAKE) -C tino clean HERE="$(HERE)"

distclean:	clean
	$(RM) "$(VERSIONFILE).h" $(PROGS) $(PROGS_EXE) $(DISTCLEAN)
	$(RM) core core.* .#*
	-$(MAKE) -C tino distclean HERE="$(HERE)"

# Special targets in presence of tinolib
# (subdirectory tino)

dist:	distclean
	-$(MAKE) -C tino dist HERE="$(HERE)" DEBUGS="$(DBG_CFLAGS)$(DBG_LDFLAGS)$(DBG_LDLIBS)"

tar:	distclean
	-$(MAKE) -C tino tar HERE="$(HERE)"

diff:
	-$(MAKE) -C tino diff HERE="$(HERE)"

# Automatically generated from $(SUBDIRS):

# automatically generated dependencies
$(PROG1).o:	$(COMMON)
$(PROG1):	$(PROG1).o $(OBJS) $(LIBS)

# compiler generated dependencies, remove if incorrect

# included: ddrescue-verify.d
$(PROG1).o:  ddrescue-verify.c \
  /Users/joe/Developer/ddrescue-verify/tino/alarm.h \
  /Users/joe/Developer/ddrescue-verify/tino/file.h \
  /Users/joe/Developer/ddrescue-verify/tino/sysfix.h \
  /Users/joe/Developer/ddrescue-verify/tino/sysfix_cygwin.h \
  /Users/joe/Developer/ddrescue-verify/tino/sysfix_diet.h \
  /Users/joe/Developer/ddrescue-verify/tino/type.h \
  /Users/joe/Developer/ddrescue-verify/tino/fatal.h \
  /Users/joe/Developer/ddrescue-verify/tino/ex.h \
  /Users/joe/Developer/ddrescue-verify/tino/arg.h \
  /Users/joe/Developer/ddrescue-verify/tino/alloc.h \
  /Users/joe/Developer/ddrescue-verify/tino/err.h \
  /Users/joe/Developer/ddrescue-verify/tino/debug.h \
  /Users/joe/Developer/ddrescue-verify/tino/signals.h \
  /Users/joe/Developer/ddrescue-verify/tino/buf_line.h \
  /Users/joe/Developer/ddrescue-verify/tino/buf.h \
  /Users/joe/Developer/ddrescue-verify/tino/codec.h \
  /Users/joe/Developer/ddrescue-verify/tino/getopt.h \
  /Users/joe/Developer/ddrescue-verify/tino/scale.h \
  /Users/joe/Developer/ddrescue-verify/tino/auxbuf.h \
  /Users/joe/Developer/ddrescue-verify/tino/md5.h \
  /Users/joe/Developer/ddrescue-verify/ddrescue-verify_version.h

# end
