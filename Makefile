
.PHONY: all

all: acl-sigur-poster-English.pdf \
	 acl-sigur-poster-Komi.pdf \
	 acl-sigur-poster-Finnish.pdf

acl-sigur-poster-English.tex: acl-sigur-poster.tex
	sed -e 's/BABEL/english/' -e 's/TRANSLATOR/english/' < $< > $@

acl-sigur-poster-Komi.tex: acl-sigur-poster.tex
	sed -e 's/BABEL/russian/' -e 's/TRANSLATOR/russian/' < $< > $@

acl-sigur-poster-Finnish.tex: acl-sigur-poster.tex
	sed -e 's/BABEL/finnish/' -e 's/TRANSLATOR/finnish/' < $< > $@


%.pdf: %.tex
	xelatex $<
	xelatex $<

clean:
	-rm -f *.log *.bbl *.aux
