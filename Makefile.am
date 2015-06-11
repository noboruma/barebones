SUBDIRS = src . tests
dist_doc_DATA = README

EXTRA_DIST = VERSION

version-inc-major:
	awk -F'.' '$$1=$$1+1' OFS='.' $(srcdir)/VERSION >$(builddir)/tmp
	mv $(builddir)/tmp $(srcdir)/VERSION
	(cd $(srcdir);	./bootstrap.sh)
	cat $(srcdir)/VERSION

version-inc-minor:
	awk -F'.' '$$2=$$2+1' OFS='.' $(srcdir)/VERSION >$(builddir)/tmp 
	mv $(builddir)/tmp $(srcdir)/VERSION
	(cd $(srcdir);	./bootstrap.sh)
	cat $(srcdir)/VERSION

version-inc-revision:
	awk -F'.' '$$3=$$3+1' OFS='.' $(srcdir)/VERSION >$(builddir)/tmp
	mv $(builddir)/tmp $(srcdir)/VERSION
	(cd $(srcdir);	./bootstrap.sh)
	cat $(srcdir)/VERSION
