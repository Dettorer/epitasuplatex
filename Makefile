SRC=slides

$(SRC).pdf: $(SRC).tex Makefile references.bib
	latexmk

.PHONY: slides
slides: $(SRC).pdf

.PHONY: evince okular
evince okular: %: $(SRC).pdf
	nohup $@ $(SRC).pdf > /dev/null 2>&1 &

.PHONY: clean distclean
clean:
	latexmk -c
	@rm -rvf *.nav *.snm *.vrb _minted-slides *.run.xml *.bbl
distclean: clean
	latexmk -C
