# LaTeX presentation for EPITA first year students

This presentation is aimed at new first year students for the french computer
science engineering school EPITA. The presentation takes place during the
introduction seminars before the first term begins.

For a compiled PDF of this presentation, try <https://dettorer.net/latex.pdf>
(but it might not be up to date).

## Dependencies

This document is meant to be compiled using latexmk with xelatex (see
[Makefile](Makefile) and [.latexmkrc](.latexmkrc)).

Use `grep '^\\usepackage' slides.tex` to find which packages are used and may
need to be explicitely installed.

## Compilation

To compile the slides, run `latexmk` or `make`.
