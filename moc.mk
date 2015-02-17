#This file is for src/Makefile.am, it helps at generating moc files

moc_%.cc : %.hh
	$(MOC) -i -o "$@" "$<"

moc_%.cpp : %.h
	$(MOC) -i -o "$@" "$<"

clean-moc-extra:
	rm -vf moc_*.cpp && rm -vf moc_*.cc

